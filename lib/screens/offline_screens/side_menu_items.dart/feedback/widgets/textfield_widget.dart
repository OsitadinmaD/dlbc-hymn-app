import 'package:flutter/material.dart';

import '../../../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../../../utils/constants/sizes.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.controller,required this.hint,required this.title});

  final String title, hint;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge,),
          ],
        ),
        const SizedBox(height: Psizes.sm,),
        SizedBox(
          height: 110,
          width: PHelperFunctions.screenWidth(),
          child: TextField(
            controller: controller,
            maxLines: null,
            minLines: null,
            autocorrect: true,
            expands: true,
            cursorOpacityAnimates: true,
            keyboardType: TextInputType.text,
            maxLength: 300,
            decoration: InputDecoration(
              hintText: hint
            ),
            enableSuggestions: true,
          ),
        )
      ],
    );
  }
}