import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({super.key, required this.image,required this.description, required this.title, required this.onPressed});

  final String image, title, description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Lottie.asset(
                image,
                animate: true,
                fit: BoxFit.cover,
                repeat: true,
              ),
              SizedBox(height: Psizes.md,),
              Text(title, style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
              SizedBox(height: PHelperFunctions.screenHeight() * 0.005,),
              Text(description, style: Theme.of(context).textTheme.titleSmall,),
              SizedBox(height: PHelperFunctions.screenHeight() * 0.3,),
            ],
          ),
        ),
      ),
    );
  }
}