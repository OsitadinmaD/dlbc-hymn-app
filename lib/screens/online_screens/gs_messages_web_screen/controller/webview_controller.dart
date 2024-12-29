// ignore_for_file: unused_local_variable

import 'dart:async';
import 'dart:isolate';
import 'dart:ui';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../utils/constants/colors.dart';

class InAppWebViewController extends GetxController{
  var loadProgress = 0.0.obs;
  var downloadProgress = 0.obs;
  Rx<bool> connectionThrough = false.obs;
  Rx<int> connectionStatus = 0.obs;
  Rx<String> pageTitle = ''.obs;
  late final String? taskID;
  final controller = WebViewController();
  late StreamSubscription<InternetConnectionStatus> _listener;
  static Future<bool> storagePermissionHandler = Permission.storage.request().isGranted;

  WebViewController initWebView() {
    return controller
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://dclm.org/sermons/'))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (progress){
          loadProgress.value = progress.roundToDouble() ;
        },
        onPageStarted: (url) {
          pageTitle.value = 'Loading...';
        },
        onPageFinished: (url) {
          pageTitle.value = url;
          loadProgress.value = 0;
        },
        onNavigationRequest: (request) async {
          if(request.url.endsWith('.pdf') || request.url.endsWith('.zip') || request.url.endsWith('.mp3') 
            || request.url.endsWith('.mp4') || request.url.endsWith('.pdf') || request.url.endsWith('.jpeg') || request.url.endsWith('.cdr')){
            await _downloadFile(request.url);
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      )
    );
  }

  Future<void> _downloadFile(String url) async{
    final status = await Permission.storage.request();
    if(status.isGranted) {
      final taskID = await FlutterDownloader.enqueue(
        url: url, 
        savedDir: "/storage/emulated/0/Download",//path to save file in the users device
        showNotification: true,
        openFileFromNotification: true,
      );
 
    }else if(status.isDenied){
      Get.snackbar('Error', 'Failed to grant permission to access storage',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: Get.isDarkMode ? PColor.error.withOpacity(0.2) : PColor.error.withOpacity(0.5),
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
    }else if(status.isPermanentlyDenied){
      Get.snackbar('Error', 'Storage access has been permanently denied',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: Get.isDarkMode ? PColor.error.withOpacity(0.2) : PColor.error.withOpacity(0.5),
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
    }else if(status.isRestricted){
      Get.snackbar('Error', 'Your storage access is restricted',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: Get.isDarkMode ? PColor.error.withOpacity(0.2) : PColor.error.withOpacity(0.5),
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
    }else{
      Get.snackbar('Error', 'Please grant the app access to your storage',
        animationDuration: Duration(milliseconds: 500),
        onTap: (snack) => Get.back(),
        backgroundColor: Get.isDarkMode ? PColor.error.withOpacity(0.2) : PColor.error.withOpacity(0.5),
        colorText: PColor.light,
        duration: Duration(milliseconds: 2500),
        isDismissible: true,
        snackPosition: SnackPosition.BOTTOM
      );
    }
  }

  void callback(String id,int status, int progress) {
    SendPort? sendPort = IsolateNameServer.lookupPortByName('downloadingFile');
    sendPort!.send(progress);
  }

  ReceivePort receivePort = ReceivePort();


  @override
  void onInit() {
    internetConnectionChecker();
    IsolateNameServer.registerPortWithName(receivePort.sendPort, 'downloadingFile');
    receivePort.listen((message) {
      downloadProgress.value = message;
    });
    FlutterDownloader.registerCallback(callback);
    super.onInit();
  }
  


  @override
  void onReady() {
    super.onReady();
    initWebView();
  }

  void internetConnectionChecker() async{
    final customChecker = InternetConnectionChecker.createInstance(
    addresses: [
      AddressCheckOption(uri: Uri.parse('https://dclm.org')),
      AddressCheckOption(uri: Uri.parse('https://dclm.org/'),),
    ],
  );

  bool isConnected = await customChecker.hasConnection;
  switch(isConnected){
    case true:
      connectionStatus.value = 1;
      break;
    case false:
      connectionStatus.value = 0;
  }
  //print('Custom instance conn ected: $isConnected');
  }

  @override
  void onClose() {
    super.onClose();
    _listener.cancel();
  }
}