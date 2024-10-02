import 'package:dlcm_ghs/screens/offline_screens/doctrinal_screen/controller/pdf_screens_controller.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFScreenView extends StatefulWidget {
  const PDFScreenView({super.key});

  @override
  State<PDFScreenView> createState() => _PDFScreenViewState();
}

class _PDFScreenViewState extends State<PDFScreenView> {
  final GlobalKey<SfPdfViewerState> _pdfViewStateKey = GlobalKey<SfPdfViewerState>();
  List<String> contents = ['Preface', 'Table of contents', 'Gospel Landmarks', 'Introduction to Bible Doctrines','The Holy Bible',
  'The GodHead', 'Virgin birth of Jesus', 'Total Depravity','Repentance','Restitution','Justification','Water Baptism',"Lord's Super", 'Sanctification', 'Holy Ghost Baptism',
  'Redemption', 'Personal Evangelism', 'Marriage', 'Rapture','Resurection of the dead','Great tribulation','Second Coming of Christ',
  "Christ's millennial reign", 'Great White Throne Judgement','New Heaven and the new Earth','Hell Fire']; 
  
  double initialZoomLevel = 1.0;

  
  String dropDownValue = 'Preface';

  @override
  Widget build(BuildContext context) {

    final pdfController = Get.put(PdfScreensController());
    return Scaffold(
      appBar: AppBar(
        //title: Text('BIBLE DOCTRINE', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(tooltip: 'Back',onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: [
          DropdownButton(
              dropdownColor: Get.isDarkMode ? PColor.dark : PColor.light,
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              value: dropDownValue,
              icon: const Icon(Icons.arrow_drop_down_rounded,size: 25,),
              items: contents.map((String content){
                return DropdownMenuItem(
                  value: content,      
                  child: Text(content, style: Theme.of(context).textTheme.labelLarge),
                );
              }).toList(), 
              onChanged: (String? value) {
                setState(() {
                  dropDownValue = value!;
                  switch(value){
                  case 'preface': pdfController.pdfViewerController.jumpToPage(2);break;
                  case 'Table of contents': pdfController.pdfViewerController.jumpToPage(3);break;
                  case 'Gospel Landmarks': pdfController.pdfViewerController.jumpToPage(4);break;
                  case 'Introduction to Bible Doctrines': pdfController.pdfViewerController.jumpToPage(8);break;
                  case 'The Holy Bible': pdfController.pdfViewerController.jumpToPage(10);break;
                  case 'The GodHead': pdfController.pdfViewerController.jumpToPage(11);break;
                  case 'Virgin birth of Jesus': pdfController.pdfViewerController.jumpToPage(14);break;
                  case 'Total Depravity': pdfController.pdfViewerController.jumpToPage(15);break;
                  case 'Repentance': pdfController.pdfViewerController.jumpToPage(21);break;
                  case 'Restitution': pdfController.pdfViewerController.jumpToPage(22);break;
                  case 'Justification': pdfController.pdfViewerController.jumpToPage(27);break;
                  case 'Water Baptism': pdfController.pdfViewerController.jumpToPage(30);break;
                  case "Lord's Super": pdfController.pdfViewerController.jumpToPage(31);break;
                  case 'Sanctification': pdfController.pdfViewerController.jumpToPage(32);break;
                  case 'Holy Ghost Baptism': pdfController.pdfViewerController.jumpToPage(34);break;
                  case 'Redemption': pdfController.pdfViewerController.jumpToPage(35);break;
                  case 'Personal Evangelism': pdfController.pdfViewerController.jumpToPage(37);break;
                  case 'Marriage': pdfController.pdfViewerController.jumpToPage(39);break;
                  case 'Rapture': pdfController.pdfViewerController.jumpToPage(43);break;
                  case 'Resurection of the dead': pdfController.pdfViewerController.jumpToPage(44);break;
                  case 'Great tribulation': pdfController.pdfViewerController.jumpToPage(46);break;
                  case 'Second Coming of Christ': pdfController.pdfViewerController.jumpToPage(48);break;
                  case "Christ's millennial reign": pdfController.pdfViewerController.jumpToPage(49);break;
                  case 'Great White Throne Judgement': pdfController.pdfViewerController.jumpToPage(51);break;
                  case 'New Heaven and the new Earth': pdfController.pdfViewerController.jumpToPage(52);break;
                  case 'Hell Fire': pdfController.pdfViewerController.jumpToPage(54);break;
                  default: pdfController.pdfViewerController.jumpToPage(1);
                  }
                });
              },
            ),
          IconButton(tooltip: 'Bookmark', onPressed: () => pdfController.openBookmarkView(sfpdfViewerStateKey:  _pdfViewStateKey), icon: const Icon(Icons.bookmark_rounded, size: 25,))
        ],
      ),
      body: SizedBox.expand(child: pdfController.pdfView(sfpdfViewerStateKey: _pdfViewStateKey, pdfFilePath: 'assets/pdf_files/Bible-Doctrine-Booklet.pdf'),)
    );
  }
}