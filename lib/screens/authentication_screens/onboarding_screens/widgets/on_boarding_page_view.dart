import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:dlcm_ghs/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.title,
    required this.image,
    required this.subTitle
  });

  final String title, subTitle, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Psizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            height: PHelperFunctions.screenHeight() * 0.6,
            width: PHelperFunctions.screenWidth() * 0.8,
          ),
          const SizedBox(height: Psizes.md,),
          Text(title, style: Theme.of(context).textTheme.headlineMedium,softWrap: true,textAlign: TextAlign.center,),
          const SizedBox(height: Psizes.spaceBtwSections,),
          Text(subTitle, style: Theme.of(context).textTheme.bodyMedium,softWrap: true,textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}