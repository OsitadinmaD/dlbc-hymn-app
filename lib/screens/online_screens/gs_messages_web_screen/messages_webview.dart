import 'package:dlcm_ghs/screens/online_screens/gs_messages_web_screen/controller/webview_controller.dart';
import 'package:dlcm_ghs/screens/online_screens/gs_messages_web_screen/widgets/no_internet.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MessagesWebview extends StatelessWidget {
  const MessagesWebview({super.key});

  @override
  Widget build(BuildContext context) {
    final webPageController = Get.put<InAppWebViewController>(InAppWebViewController());
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            width: PHelperFunctions.screenWidth(),
            child: Obx( () => (webPageController.loadProgress.value > 0 && webPageController.loadProgress.value < 1) ? SizedBox(
              child: LinearProgressIndicator(
                  value: webPageController.loadProgress.value,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    PColor.success
                  ),
                  backgroundColor: PColor.success.withOpacity(0.6),
                ),
            ) :
              SizedBox.shrink(),
            ),
          ),
          Obx(() => webPageController.connectionStatus.value == 1 ?
           Expanded(
             child: WebViewWidget(
              controller: webPageController.controller,
                         ),
           ) :
          Expanded(
            child: NoInternet(
              image: 'assets/lottie_animations/signal.json', 
              description: 'No Internet Connection', 
              title: 'Error', 
              onPressed: () async => webPageController.controller.reload()
            ),
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () async => webPageController.controller.canGoBack() , 
                icon: Icon(Icons.arrow_back_rounded),
                tooltip: 'Go Back',
              ),
              IconButton(
                onPressed: () async {
                  webPageController.controller.reload();
                  Get.snackbar('Reload', 'Page Reloaded Successfully',
                    animationDuration: Duration(milliseconds: 500),
                    onTap: (snack) => Get.back(),
                    backgroundColor: Get.isDarkMode ? PColor.success.withOpacity(0.2) : PColor.success.withOpacity(0.5),
                    colorText: PColor.light,
                    duration: Duration(milliseconds: 2500),
                    isDismissible: true,
                    snackPosition: SnackPosition.BOTTOM
                  );
                } , 
                icon: Icon(Icons.replay_rounded),
                tooltip: 'Reload',
              ),
              IconButton(
                onPressed: () async {
                  webPageController.controller.clearCache();
                  Get.snackbar('Clear Cache', 'Cache Cleared Successfully',
                    animationDuration: Duration(milliseconds: 500),
                    onTap: (snack) => Get.back(),
                    backgroundColor:Get.isDarkMode ? PColor.success.withOpacity(0.2) : PColor.success.withOpacity(0.5),
                    colorText: PColor.light,
                    duration: Duration(milliseconds: 2500),
                    isDismissible: true,
                    snackPosition: SnackPosition.BOTTOM
                  );
                }, 
                icon: Icon(Icons.delete_rounded),
                tooltip: 'Clear Cache',
              ),
              IconButton(
                onPressed: () async => webPageController.controller.canGoForward() , 
                icon: Icon(Icons.arrow_forward_rounded),
                tooltip: 'Go Forward',
              ),
      
              
            ],
          )
        ],
      )
    ),
    );
  }
}