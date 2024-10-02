import 'package:dlcm_ghs/screens/offline_screens/doctrinal_screen/controller/pdf_screens_controller.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class HistoryPDFScreenView extends StatefulWidget {
  const HistoryPDFScreenView({super.key});

  @override
  State<HistoryPDFScreenView> createState() => _HistoryPDFScreenViewState();
}

class _HistoryPDFScreenViewState extends State<HistoryPDFScreenView> {
  final GlobalKey<SfPdfViewerState> _pdfViewStateKey = GlobalKey<SfPdfViewerState>();
  List<String> contents = ['Abstract','Introduction','Brief Bibliography','Education','Ministry','Beliefs and Practices', 'Conclusion']; 
  
  double initialZoomLevel = 1.0;

  
  String dropDownValue = 'Abstract';

  @override
  Widget build(BuildContext context) {

    final pdfController = Get.put(PdfScreensController());
    return Scaffold(
      appBar: AppBar(
        title: Text('HISTORY', style: Theme.of(context).textTheme.headlineMedium,),
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
                  case 'Abstract': pdfController.pdfViewerController.jumpToPage(1);break;
                  case 'Introduction': pdfController.pdfViewerController.jumpToPage(1);break;
                  case 'Brief Bibliography': pdfController.pdfViewerController.jumpToPage(1);break;
                  case 'Education': pdfController.pdfViewerController.jumpToPage(2);break;
                  case 'Ministry': pdfController.pdfViewerController.jumpToPage(2);break;
                  case 'Beliefs and Practices': pdfController.pdfViewerController.jumpToPage(3);break;
                  case 'Conclusion': pdfController.pdfViewerController.jumpToPage(4);break;
                  default: pdfController.pdfViewerController.jumpToPage(1);
                  }
                });
              },
            ),
          IconButton(tooltip: 'Bookmark', onPressed: () => pdfController.openBookmarkView(sfpdfViewerStateKey:  _pdfViewStateKey), icon: const Icon(Icons.bookmark_rounded, size: 25,))
        ],
      ),
      body: SizedBox.expand(child: pdfController.pdfView(sfpdfViewerStateKey: _pdfViewStateKey, pdfFilePath: 'assets/pdf_files/DCLM_history_pdf.pdf'),)
    );
  }
}