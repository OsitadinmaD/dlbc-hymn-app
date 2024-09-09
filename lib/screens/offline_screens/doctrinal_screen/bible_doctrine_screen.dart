import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFScreenView extends StatefulWidget {
  const PDFScreenView({super.key});

  @override
  State<PDFScreenView> createState() => _PDFScreenViewState();
}

class _PDFScreenViewState extends State<PDFScreenView> {
  late PdfViewerController pdfViewerController;
  final GlobalKey<SfPdfViewerState> _pdfViewStateKey = GlobalKey<SfPdfViewerState>();
  List<String> contents = ['Preface', 'Table of contents', 'Gospel Landmarks', 'Introduction to Bible Doctrines','The Holy Bible',
  'The GodHead', 'Virgin birth of Jesus', 'Total Depravity','Repentance','Restitution','Justification','Water Baptism',"Lord's Super", 'Sanctification', 'Holy Ghost Baptism',
  'Redemption', 'Personal Evangelism', 'Marriage', 'Rapture','Resurection of the dead','Great tribulation','Second Coming of Christ',
  "Christ's millennial reign", 'Great White Throne Judgement','New Heaven and the new Earth','Hell Fire']; 
  
  double initialZoomLevel = 1.0;

  
  String dropDownValue = 'Preface';

  @override
  void initState() {
    super.initState();
    pdfViewerController = PdfViewerController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('BIBLE DOCTRINE', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: [
          AnimatedCrossFade(
            duration:const Duration(milliseconds: 5000),
            crossFadeState: CrossFadeState.showSecond,
            firstChild: Container(),
            secondChild: DropdownButton(
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
                  case 'Preface': {
                    pdfViewerController.jumpToPage(2);
                    while(pdfViewerController.pageNumber == 2){
                      dropDownValue = value;
                    }
                  }
                  case 'Table of contents': pdfViewerController.jumpToPage(3);break;
                  case 'Gospel Landmarks': pdfViewerController.jumpToPage(4);break;
                  case 'Introduction to Bible Doctrines': pdfViewerController.jumpToPage(8);break;
                  case 'The Holy Bible': pdfViewerController.jumpToPage(10);break;
                  case 'The GodHead': pdfViewerController.jumpToPage(11);break;
                  case 'Virgin birth of Jesus': pdfViewerController.jumpToPage(14);break;
                  case 'Total Depravity': pdfViewerController.jumpToPage(15);break;
                  case 'Repentance': pdfViewerController.jumpToPage(21);break;
                  case 'Restitution': pdfViewerController.jumpToPage(22);break;
                  case 'Justification': pdfViewerController.jumpToPage(27);break;
                  case 'Water Baptism': pdfViewerController.jumpToPage(30);break;
                  case "Lord's Super": pdfViewerController.jumpToPage(31);break;
                  case 'Sanctification': pdfViewerController.jumpToPage(32);break;
                  case 'Holy Ghost Baptism': pdfViewerController.jumpToPage(34);break;
                  case 'Redemption': pdfViewerController.jumpToPage(35);break;
                  case 'Personal Evangelism': pdfViewerController.jumpToPage(37);break;
                  case 'Marriage': pdfViewerController.jumpToPage(39);break;
                  case 'Rapture': pdfViewerController.jumpToPage(43);break;
                  case 'Resurection of the dead': pdfViewerController.jumpToPage(44);break;
                  case 'Great tribulation': pdfViewerController.jumpToPage(46);break;
                  case 'Second Coming of Christ': pdfViewerController.jumpToPage(48);break;
                  case "Christ's millennial reign": pdfViewerController.jumpToPage(49);break;
                  case 'Great White Throne Judgement': pdfViewerController.jumpToPage(51);break;
                  case 'New Heaven and the new Earth': pdfViewerController.jumpToPage(52);break;
                  case 'Hell Fire': pdfViewerController.jumpToPage(54);break;
                  default: pdfViewerController.jumpToPage(1);
                  }
                });
              },
            ),
          ),
          IconButton(onPressed: () => _pdfViewStateKey.currentState?.openBookmarkView(), icon: const Icon(Icons.bookmark_rounded, size: 25,))
        ],
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: SfPdfViewer.asset(
              'assets/pdf_files/Bible-Doctrine-Booklet.pdf',
              key: _pdfViewStateKey,
              pageSpacing: 2,
              controller: pdfViewerController,
              maxZoomLevel: 3.0,
              
              
            ),
          ),
          Positioned(
            right: PHelperFunctions.screenWidth() * 0.1 / 3,
            bottom: PHelperFunctions.toolBarHeight() * 0.3,
            child: Container(
              width: PHelperFunctions.screenWidth() * 0.13,
              height: PHelperFunctions.screenHeight() * 0.4,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: Colors.transparent,
                border: Border.all(style: BorderStyle.solid,),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: () => pdfViewerController.firstPage(), icon: const Icon(Icons.arrow_drop_up_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(onPressed: () => pdfViewerController.zoomLevel = 2.0, icon: const Icon(Icons.zoom_in_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(onPressed: () => pdfViewerController.zoomLevel = 1.0, icon: const Icon(Icons.zoom_out_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(onPressed: () => pdfViewerController.nextPage(), icon: const Icon(Icons.arrow_forward_ios_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(onPressed: () => pdfViewerController.previousPage(), icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(onPressed: () => pdfViewerController.lastPage(), icon: const Icon(Icons.arrow_drop_down_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
  
}