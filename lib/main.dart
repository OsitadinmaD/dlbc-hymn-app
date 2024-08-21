import 'package:dlcm_ghs/screens/authentication_screens/login_screen/login_screen.dart'; 
import 'package:dlcm_ghs/screens/authentication_screens/onboarding_screens/on_boarding_screen.dart';
import 'package:dlcm_ghs/screens/authentication_screens/password_configuration_screen/forgot_password_screen/forgot_password.dart';
import 'package:dlcm_ghs/screens/authentication_screens/password_configuration_screen/password_reset_mail_screen/pass_reset_mail.dart';
import 'package:dlcm_ghs/screens/authentication_screens/sign_up_screen/sign_up_page.dart';
import 'package:dlcm_ghs/screens/authentication_screens/success_screen/successful.dart';
import 'package:dlcm_ghs/screens/authentication_screens/verify_email_screen/verify_email.dart';
import 'package:dlcm_ghs/themedata/themedata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/offline_screens/hymn_home.dart/hymn_home.dart';
void main() {
  runApp(const MyApp());
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
        defaultTransition: Transition.leftToRightWithFade,
    );
  }
}

