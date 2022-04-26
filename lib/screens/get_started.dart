import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/welcome_scrn.dart';

import '../constant.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            //images
            Image.asset(
              'assets/images/onboarding_screen.png',
              scale: 1.2,
            ),
            //images

            Image.asset(
              'assets/images/krishna.png',
              scale: 1.2,
            ),

            Text(
              'Music at Gurukul',
              style: headline1(color: orange),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'join us at gurukul and enhance your skills of \nFlute and vocal music',
              style: bodyText1(
                color: orange,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              ontap: () {
                Navigator.pushNamed(context, WelcomScrn.routName);
              },
              text: 'Get Started',
              btnColor: orange,
              textColor: white,
            ),
          ],
        ),
      )),
    );
  }
}
