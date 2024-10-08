import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/social_handles/widget/launch_app_helper_methods.dart';
import 'package:dlcm_ghs/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/sizes.dart';

class SocialAccountsTab extends StatelessWidget {
  const SocialAccountsTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Get.isDarkMode ? PColor.grey : PColor.darkGrey,
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Padding(
        padding:  const EdgeInsets.all(4.0),
        child: Column(
          children: [               
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchFacebookApp(),
              child: Chip(
                label: Text('Facebook', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Image.asset('assets/images/socials/facebook(2).png',fit: BoxFit.cover,height: 50, width:50),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
            GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchWhatsappApp(),
              child: Chip(
                label: Text('Whatsapp', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Image.asset('assets/images/socials/watsapp.png',fit: BoxFit.cover,height: 50, width:50),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
          ],
        ),
        const SizedBox(height: Psizes.md,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchTwitterApp(),
              child: Chip(
                label: Text('   Twitter   ', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Image.asset('assets/images/socials/twitter.png',fit: BoxFit.cover,height: 50, width:50),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
            GestureDetector(
              onTap: () => LaunchAppHelperMethods.launchInstagramApp(),
              child: Chip(
                label: Text('Instagram', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Image.asset(
                  'assets/images/socials/instagram.png',
                  fit: BoxFit.cover,
                  height: 50, width:50,
                  color: Get.isDarkMode ? PColor.light : PColor.dark,),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
          ],
        ),
        const SizedBox(height: Psizes.md,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchMessageApp(),
              child: Chip(
                label: Text('Message', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Icon(Icons.message_rounded,size: 25,color: Get.isDarkMode ? PColor.light : PColor.dark,),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
            GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchPhoneApp(),
              child: Chip(
                label: Text('PhoneBook', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Icon(Icons.phone_rounded,size: 25,color: Get.isDarkMode ? PColor.light : PColor.dark,),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
          ],
        ),
        const SizedBox(height: Psizes.md,),
        GestureDetector(
              onTap: () async => await LaunchAppHelperMethods.launchGmailApp(),
              child: Chip(
                label: Text('  Email ', style: Theme.of(context).textTheme.labelLarge,),
                avatar: Icon(Icons.mail_rounded,size: 25,color: Get.isDarkMode ? PColor.light : PColor.dark,),
                labelPadding: const EdgeInsets.all(4.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
