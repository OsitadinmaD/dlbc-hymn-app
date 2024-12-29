import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';
import '../controller/pdf_screens_controller.dart';
import '../widget/switch_hymn.dart';

class MusicScript extends StatefulWidget {
  const MusicScript({super.key});

  @override
  State<MusicScript> createState() => _MusicScriptState();
}

class _MusicScriptState extends State<MusicScript> {
  final GlobalKey<SfPdfViewerState> _sfPdfKey = GlobalKey<SfPdfViewerState>();

  final pdfController = Get.put(PdfScreensController());

  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'GHS 1 ';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            tooltip: 'Back',
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 25,
            )),
        actions: [
          DropdownButton(
            dropdownColor: Get.isDarkMode ? PColor.dark : PColor.light,
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            value: dropDownValue,
            icon: const Icon(
              Icons.arrow_drop_down_rounded,
              size: 25,
            ),
            items: SwitchHymn().hymnsTitle.map((String content) {
              return DropdownMenuItem(
                value: content,
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        PTexts.hymnLogoImageString,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(content,
                        style: Theme.of(context).textTheme.labelLarge),
                  ],
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                dropDownValue = value!;
                SwitchHymn().switchHymn(value);
              });
            },
          ),
          IconButton(
              tooltip: 'Bookmark',
              onPressed: () => pdfController.openBookmarkView(
                  sfpdfViewerStateKey: _sfPdfKey),
              icon: const Icon(
                Icons.bookmark_rounded,
                size: 25,
              ))
        ],
      ),
      body: SafeArea(
          child: pdfController.pdfView(
              sfpdfViewerStateKey: _sfPdfKey,
              pdfFilePath: 'assets/pdf_files/Light-GHS-Musicscript.pdf')),
    );
  }
}
