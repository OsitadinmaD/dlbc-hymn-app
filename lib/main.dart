import 'package:dlcm_ghs/screens/authentication_screens/login_screen/login_screen.dart'; 
import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/on_boarding_screen.dart';
import 'package:dlcm_ghs/screens/authentication_screens/password_configuration_screen/forgot_password_screen/forgot_password.dart';
import 'package:dlcm_ghs/screens/authentication_screens/password_configuration_screen/password_reset_mail_screen/pass_reset_mail.dart';
import 'package:dlcm_ghs/screens/authentication_screens/sign_up_screen/sign_up_page.dart';
import 'package:dlcm_ghs/screens/authentication_screens/success_screen/successful.dart';
import 'package:dlcm_ghs/screens/authentication_screens/verify_email_screen/verify_email.dart';
import 'package:dlcm_ghs/screens/offline_screens/favorite_screen/persisting_services/favorite_service.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/settings/controller/font_size_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/hymnal_screens/detail_screen/settings/controller/hymn_color_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/image_picker_controller.dart';
import 'package:dlcm_ghs/screens/offline_screens/side_menu_items.dart/profile/controller/profile_controller.dart';
import 'package:dlcm_ghs/themedata/themedata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/offline_screens/hymn_home.dart/hymn_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  initServices2();
  initServices3();
  runApp(const MyApp());
}

Future<void> initServices() async {
  // ignore: avoid_print
  print('starting services....');
  await Get.putAsync<FavoriteService>(() async => FavoriteService());
  await Get.putAsync<HymnColorController>(() async => HymnColorController());
  // ignore: avoid_print
  print('All services started....');
}

Future<void> initServices2() async {
  // ignore: avoid_print
  print('starting services....');
  await Get.putAsync<FontSizeController>(() async => FontSizeController());
  await Get.putAsync<ProfileController>(() async => ProfileController());
  // ignore: avoid_print
  print('All services started....');
}

Future<void> initServices3() async {
  // ignore: avoid_print
  print('starting services....');
  await Get.putAsync<ImagePickerController>(() async => ImagePickerController());
  // ignore: avoid_print
  print('All services started....');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        title: 'Flutter Demo',
        theme: PThemeData.lightTheme(),
        darkTheme: PThemeData.darkTheme(),
        home: const HymnHome(),
        //initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => const OnBoardingScreen(),transition: Transition.leftToRightWithFade),
          GetPage(name: '/login', page: () => const LoginScreen(),transition: Transition.leftToRightWithFade,arguments: const {'firstname': 'Divine'}),
          GetPage(name: '/emailVerification', page: () => const VerifyEmailScreen(),transition: Transition.leftToRightWithFade),
          GetPage(name: '/accountSuccessful', page: () => const AccountSuccessfulScreen(),transition: Transition.leftToRightWithFade),
          GetPage(name: '/signUp', page: () => const SignUpPage(),transition: Transition.leftToRightWithFade),
          GetPage(name: '/forgotPassword', page: () => const ForgotPasswordScreen(),transition: Transition.leftToRightWithFade),
          GetPage(name: '/resetPassword', page: () => const PasswordResetMailScreen(),transition: Transition.leftToRightWithFade),
        ],
        defaultTransition: Transition.zoom,
    );
  }
}

