import 'dart:io';

import 'package:dlcm_ghs/utils/constants/helpers/helper_fncs.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchAppHelperMethods {
  const LaunchAppHelperMethods._();

  static launchWhatsappApp() async {
    String contact = '09133905589';
    String text = 'Hi';
    String androidUrl = 'whatsapp://send?phone=$contact&text=$text';
    String iosUrl = 'https://wa.me/$contact?text=${Uri.parse(text)}';
    String webUrl = 'https://api.whatsapp.com/send/?phone=$contact&text=$text';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidUrl))){
          await launchUrl(Uri.parse(androidUrl));
        }else{
          if(await canLaunchUrl(Uri.parse(iosUrl))){
            await launchUrl(Uri.parse(iosUrl));
          }
        }
      }
    }catch(error){
      if(await canLaunchUrl(Uri.parse(webUrl))){
            await launchUrl(Uri.parse(webUrl));
    }
   }
 }

 static launchFacebookApp() async {
    String androidUrl = 'https://www.facebook.com/profile.php?id=100080291620080&mibextid=ZbWKwL';
    String iosUrl = 'https://www.facebook.com/profile.php?id=100080291620080&mibextid=ZbWKwL';
    String webUrl = 'https://www.facebook.com/profile.php?id=100080291620080&mibextid=ZbWKwL';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidUrl))){
          await launchUrl(Uri.parse(androidUrl),);
        }else{
          if(await canLaunchUrl(Uri.parse(iosUrl))){
            await launchUrl(Uri.parse(iosUrl));
          }
        }
      }
    }catch(error){
      if(await canLaunchUrl(Uri.parse(webUrl))){
            await launchUrl(Uri.parse(webUrl));
    }
   }
 }

 static launchTwitterApp() async {
    String androidUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    String iosUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    String webUrl = 'https://x.com/heisakin1';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidUrl))){
          await launchUrl(Uri.parse(androidUrl));
        }else{
          if(await canLaunchUrl(Uri.parse(iosUrl))){
            await launchUrl(Uri.parse(iosUrl));
          }
        }
      }
    }catch(error){
      if(await canLaunchUrl(Uri.parse(webUrl))){
            await launchUrl(Uri.parse(webUrl));
    }
   }
 }

 static launchPhoneApp() async {
    String androidIosUrl = 'tel:+2349133905589';
    //String iosUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    //String webUrl = 'https://x.com/heisakin1';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidIosUrl))){
          await launchUrl(Uri.parse(androidIosUrl));
        }
      }
    }catch(error){
      PHelperFunctions.showAlert('Alert', 'Unable to Load PhoneBook App');
  }
 }

 static launchMessageApp() async {
    String androidIosUrl = 'sms:+2349133905589';
    //String iosUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    //String webUrl = 'https://x.com/heisakin1';

    try{
      if (Platform.isAndroid || Platform.isIOS){
        if(await canLaunchUrl(Uri.parse(androidIosUrl))){
          await launchUrl(Uri.parse(androidIosUrl));
        }
      }
    }catch(error){
       PHelperFunctions.showAlert('Alert', 'Unable to Load Message App');
    }
   }

  static launchGmailApp() async {
    String subject = 'From DLCM GHS app';
    String body = 'Hi, PixSlide team';
    String androidIosUrl = 'mailto:pixslide.hymnapp.user.feedback@gmail.com?subject=$subject&body=$body';
    //String iosUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    //String webUrl = 'https://x.com/heisakin1';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidIosUrl))){
          await launchUrl(Uri.parse(androidIosUrl));
        }
      }
    }catch(error){
      PHelperFunctions.showAlert('Alert', 'Unable to Load Email App');
   }
 }

 static launchInstagramApp() async {
    String androidIosUrl = 'https://www.instagram.com/iamakin1?igsh=MWMwamp0a3YyN3dycw==';
    //String iosUrl = 'https://x.com/heisakin1?t=YjDVdNyVlksQmrqP1iTQNw&s=09';
    //String webUrl = 'https://x.com/heisakin1';

    try{
      if (Platform.isAndroid){
        if(await canLaunchUrl(Uri.parse(androidIosUrl))){
          await launchUrl(Uri.parse(androidIosUrl),);
        }
      }
    }catch(error){
      PHelperFunctions.showAlert('Alert', 'Unable to Load Instagram App');
   }
 }
}