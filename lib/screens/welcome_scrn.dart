import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/signin_scrn.dart';
import 'package:grukul_schedular_app/screens/singup_scrn.dart';

class WelcomScrn extends StatelessWidget {
  static String routName = '/welcome_screen';
  const WelcomScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            //images
            Image.asset('assets/images/welcom_page_image.png'),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Text(
              'Welcome to Gurukul',
              style: headline1(color: textColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Loose yourself in the world of music',
              style: bodyText1(color: textColor),
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            CustomButton(
                ontap: () {
                  Navigator.pushNamed(context, SignInScrn.routName);
                },
                text: 'Sign In',
                textColor: white,
                btnColor: orange),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                ontap: () {
                  Navigator.pushNamed(context, SignUpScrn.routName);
                },
                text: 'Sign Up',
                textColor: orange,
                btnColor: white),
                const Spacer(),
          ],
        ),
      )),
    );
  }
}
