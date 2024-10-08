import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/profile_controller.dart';
import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:dlcm_ghs/utils/constants/validators/validators.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final textFieldsController = Get.put(ProfileController());
    
  GlobalKey<FormState> formState = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: Text('EDIT PROFILE', style: Theme.of(context).textTheme.headlineMedium,),
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.arrow_back_rounded,size: 25,), tooltip: 'Back',),
        actions: [
          OutlinedButton(onPressed: (){
            if(formState.currentState!.validate()){
              textFieldsController.setEmail(textFieldsController.emailController.text);
              textFieldsController.setName(textFieldsController.nameController.text);
              textFieldsController.setState(textFieldsController.stateController.text);
              textFieldsController.setRegion(textFieldsController.regionController.text);
              PHelperFunctions.showSnackBar('Profile Updated Successfully');
            }else{
              PHelperFunctions.showAlert('Failed Update', 'Please enter all the fields');
            }
            
          }, 
          child: Text('Save', style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 16)))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: Psizes.defaultPaddingOnly2(),
          child: Form(
            key: formState,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: Psizes.spaceBtwSections),
                Obx( () => TextFormField(
                    enableSuggestions: true,
                    maxLength: 25,
                    onChanged: (name) => textFieldsController.name.value = name,
                    controller: textFieldsController.nameController,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: textFieldsController.name.value,
                      helperText: 'Please provide your full name',
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                Obx( () => TextFormField(
                    enableSuggestions: true,
                    onChanged: (email) => textFieldsController.email.value = email,
                    validator: (email) => PValidators.emailValidation(email),
                    controller: textFieldsController.emailController,
                    autocorrect: true,
                    decoration: InputDecoration(
                      hintText: 'example212@gmail.com',
                      labelText: textFieldsController.email.value,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                Obx( () => TextFormField(
                    enableSuggestions: true,
                    onChanged: (state) => textFieldsController.state.value = state ,
                    controller: textFieldsController.stateController,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Please enter your state';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'State',
                      labelText: textFieldsController.state.value,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: Psizes.spaceBetweenInputFields,),
                Obx( () => TextFormField(
                    enableSuggestions: true,
                    onChanged: (region) => textFieldsController.region.value = region,
                    controller: textFieldsController.regionController,
                    autocorrect: true,
                    validator: (value) {
                      if (value == null || value.isEmpty){
                        return 'Please enter your region';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      hintText: 'Region',
                      labelText: textFieldsController.region.value,
                      border: const UnderlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}