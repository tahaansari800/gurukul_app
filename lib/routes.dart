import 'package:flutter/cupertino.dart';
import 'package:grukul_schedular_app/screens/classes_mode.dart';
import 'package:grukul_schedular_app/screens/details_scrn.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';
import 'package:grukul_schedular_app/screens/myprofile/profile_edit_scrn.dart';
import 'package:grukul_schedular_app/screens/otp_scrn.dart';
import 'package:grukul_schedular_app/screens/pasions_scrn.dart';
import 'package:grukul_schedular_app/screens/signin_scrn.dart';
import 'package:grukul_schedular_app/screens/singup_scrn.dart';
import 'package:grukul_schedular_app/screens/splash_scrn.dart';
import 'package:grukul_schedular_app/screens/welcome_scrn.dart';

import 'screens/componant/custom_navigation.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScrn.routName: (context) => const HomeScrn(),
  SplashScrn.routName: (context) => const SplashScrn(),
  WelcomScrn.routName: (context) => const WelcomScrn(),
  SignInScrn.routName: (context) => const SignInScrn(),
  SignUpScrn.routName: (context) => const SignUpScrn(),
  OtpScrn.routName: (context) => const OtpScrn(),
  PasionScrn.routName: (context) => const PasionScrn(),
  DetailsScrn.routName: (context) => DetailsScrn(),
  Classedmode.routName: (context) => const Classedmode(),
  CustomBottomNavigation.routName: (context) => const CustomBottomNavigation(),
  EditProfile.routName: (context) => const EditProfile(),
};
