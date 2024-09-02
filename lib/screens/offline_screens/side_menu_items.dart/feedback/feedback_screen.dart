

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/helpers/helper_fncs.dart';
import '../../../../utils/constants/sizes.dart';
import '../../hymn_home.dart/controller/hymn_home_controller.dart';
import 'widgets/attachment_screen.dart';
import 'widgets/textfield_widget.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionDescriptionController = TextEditingController();
    final expectedBehaviourController = TextEditingController();
    final emailController = TextEditingController();
    final sideMenuController = Get.put(HymnHomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('FEEDBACK', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
          sideMenuController.openAndCloseSideMenu();
        }, icon: const Icon(Icons.arrow_back_rounded,size: 25,)),
        actions: [
          TextButton(onPressed: (){}, child: Text('Submit', style: Theme.of(context).textTheme.labelLarge,))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: Psizes.defaultPaddingOnly2(),
            child: Column(
              children: [
                Text(
                  'Specific details can help us resolve issues and facilitate a seamless user experience in subsequent versions\n\n',
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                ),
                const SizedBox(height: Psizes.sm),
                TextfieldWidget(
                  controller: questionDescriptionController,
                  title: 'Question description',
                  hint: "Please describe the issue you \nencountered(if any) or possible improvements\nyou'd like to have in the app",
                ),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                TextfieldWidget(
                  controller: expectedBehaviourController,
                  hint: 'What type of behaviour satisfies your expectation?',
                  title: 'Expected Behaviour',
                ),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                const PicturesAttachments(),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Your contact information', style: Theme.of(context).textTheme.titleLarge,),
            ],
          ),
          const SizedBox(height: Psizes.sm,),
          SizedBox(
            height: 50,
            width: PHelperFunctions.screenWidth(),
            child: TextField(
              controller: emailController,
              autocorrect: true,
              expands: true,
              minLines: null,
              maxLines: null,
              cursorOpacityAnimates: true,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                hintText: 'Email/Phone'
              ),
              enableSuggestions: true,
            ),
          ),
          const SizedBox(height: Psizes.lg,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}