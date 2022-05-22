import 'package:flutter/cupertino.dart';
import 'package:grukul_schedular_app/screens/bansuri_scrn.dart';
import 'package:grukul_schedular_app/screens/calendar_scrn.dart';
import 'package:grukul_schedular_app/screens/classes_mode.dart';
import 'package:grukul_schedular_app/screens/custompainter_example.dart';
import 'package:grukul_schedular_app/screens/details_scrn.dart';
import 'package:grukul_schedular_app/screens/flutes_scrn.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';
import 'package:grukul_schedular_app/screens/my_orders.dart';
import 'package:grukul_schedular_app/screens/myprofile/profile_edit_scrn.dart';
import 'package:grukul_schedular_app/screens/notice_board_scrn.dart';
import 'package:grukul_schedular_app/screens/order_placed_scrn.dart';
import 'package:grukul_schedular_app/screens/otp_scrn.dart';
import 'package:grukul_schedular_app/screens/pasions_scrn.dart';
import 'package:grukul_schedular_app/screens/payment_scrn.dart';
import 'package:grukul_schedular_app/screens/reminder.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_class_mode_scrn.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_scrn.dart';
import 'package:grukul_schedular_app/screens/setting_scrn.dart';
import 'package:grukul_schedular_app/screens/signin_scrn.dart';
import 'package:grukul_schedular_app/screens/singup_scrn.dart';
import 'package:grukul_schedular_app/screens/splash_scrn.dart';
import 'package:grukul_schedular_app/screens/welcome_scrn.dart';
import 'package:grukul_schedular_app/screens/your_schedule_scrn.dart';

import 'screens/componant/custom_navigation.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScrn.routName: (context) => const HomeScrn(),
  SplashScrn.routName: (context) => const SplashScrn(),
  WelcomScrn.routName: (context) => const WelcomScrn(),
  SignInScrn.routName: (context) => SignInScrn(),
  SignUpScrn.routName: (context) => const SignUpScrn(),
  OtpScrn.routName: (context) => const OtpScrn(mobileNo: ''),
  PasionScrn.routName: (context) => const PasionScrn(),
  DetailsScrn.routName: (context) => const DetailsScrn(),
  Classedmode.routName: (context) => const Classedmode(),
  CustomBottomNavigation.routName: (context) => const CustomBottomNavigation(),
  EditProfile.routName: (context) => const EditProfile(),
  NoticeBoardScrn.routName: (context) => const NoticeBoardScrn(),
  YourScheduleScrn.routName: (context) => const YourScheduleScrn(),
  SettingScrn.routName: (context) => const SettingScrn(),
  Reminder.routName: (context) => const Reminder(),
  OrderPlacedScrn.routName: (context) => const OrderPlacedScrn(),
  FlutesScrn.routName: (context) => const FlutesScrn(),
  BansuriScrn.routName: (context) => const BansuriScrn(title: '', prize: ''),
  MyOrders.routName: (context) => const MyOrders(),
  PaymentsScrn.routName: (context) => const PaymentsScrn(),
  ScheduleClassModeScrn.routName: (context) => const ScheduleClassModeScrn(),
  ScheduleSrn.routName: (context) => const ScheduleSrn(),
  CalendarScrn.routName: (context) => const CalendarScrn(),
  CustomPExample.routName: (context) => const CustomPExample(),
};
