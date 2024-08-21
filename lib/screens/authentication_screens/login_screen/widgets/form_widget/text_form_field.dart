import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.type,
    required this.keyboardType,
    required this.prefixIcon,
    required this.validator,
  });

  final String type;
  final TextInputType keyboardType;
  final Icon prefixIcon;
  final String? Function(String?)? validator;
  


  @override
  Widget build(BuildContext context) {
    bool passwordSufix = type.contains('Password');
    Widget? sufixIcon;
    Widget? sufixIconFix(){
      if(passwordSufix){
        sufixIcon = IconButton(onPressed: (){}, icon: const Icon(Icons.visibility_rounded));
        return sufixIcon;
      }else{
        return null;
      }
    }

    return TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        labelText: type,
        prefixIcon:  prefixIcon,
        suffixIcon: sufixIconFix(),
        contentPadding: const EdgeInsets.all(Psizes.sm)
      ),
      validator: validator,
      keyboardType: keyboardType,
    );
  }
}