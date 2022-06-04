import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grukul_schedular_app/routes.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';
import 'package:grukul_schedular_app/screens/get_started.dart';
import 'package:grukul_schedular_app/screens/signin_scrn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            toolbarHeight: 38,
            
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            ),
            // toolbarHeight: 44,
            elevation: 0,
            backgroundColor: Colors.white,
            toolbarTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w800)),
     
      ),
      routes: routes,
      // home: const CustomBottomNavigation(),
      home: const GetStarted()
      // home: const PasionScrn(),
    );
  }
}
