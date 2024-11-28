import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/helpers/helper_fncs.dart';

class PdfScreensController extends GetxController {

  late PdfViewerController pdfViewerController;

  @override
  void onInit() {
    super.onInit();
    pdfViewerController = PdfViewerController();
  }


  Widget pdfView({required GlobalKey<SfPdfViewerState> sfpdfViewerStateKey,required String pdfFilePath}){
    return Stack(
        children: [
          SizedBox.expand(
            child: SfPdfViewer.asset(
              pdfFilePath,
              key: sfpdfViewerStateKey,
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
                  IconButton(tooltip: 'First page',onPressed: () => pdfViewerController.firstPage(), icon: const Icon(Icons.arrow_drop_up_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(tooltip: 'Zoom in',onPressed: () => pdfViewerController.zoomLevel = 2.0, icon: const Icon(Icons.zoom_in_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(tooltip: 'Zoom out',onPressed: () => pdfViewerController.zoomLevel = 1.0, icon: const Icon(Icons.zoom_out_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(tooltip: 'Next Page',onPressed: () => pdfViewerController.nextPage(), icon: const Icon(Icons.arrow_forward_ios_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(tooltip: 'Previous page',onPressed: () => pdfViewerController.previousPage(), icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                  IconButton(tooltip: 'Last page',onPressed: () => pdfViewerController.lastPage(), icon: const Icon(Icons.arrow_drop_down_rounded, size: 30, color: PColor.dark,),splashColor: PColor.dark,),
                ],
              ),
            ),
          ),
        ],
      );
  }

  void openBookmarkView({required GlobalKey<SfPdfViewerState> sfpdfViewerStateKey}){
    sfpdfViewerStateKey.currentState?.openBookmarkView();
  }
}