import 'package:flutter/material.dart';

import '../constant.dart';
import 'componant/custom_button.dart';
import 'otp_scrn.dart';

class SignUpScrn extends StatelessWidget {
  static String routName = '/signup_screen';
  const SignUpScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              //images
              Image.asset(
                'assets/images/singup_screen.png',
                scale: 1.2,
              ),
              const SizedBox(
                height: 20,
              ),

              Text(
                'Sign Up',
                style: headline1(color: textColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Enter you details so we can help you \n efficiently',
                style: bodyText1(color: textColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    // hintText: 'Mobile Number',
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),

              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                    // hintText: 'Mobile Number',
                    label: const Text('Mobile Number'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),

              const SizedBox(
                height: 40,
              ),

              CustomButton(
                  ontap: () {
                    Navigator.pushNamed(context, OtpScrn.routName);
                  },
                  text: 'Next',
                  textColor: white,
                  btnColor: orange),
              const SizedBox(
                height: 20,
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                    style: TextStyle(color: orange, fontSize: 12),
                    text: 'Or sign up with'),
                TextSpan(
                    style: TextStyle(color: orange, fontSize: 12),
                    text: 'social networks')
              ])),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/google_icon.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/apple_icon.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/icons/facebook_icon.png')),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Text.rich(TextSpan(children: [
                const TextSpan(
                    style: TextStyle(color: textColor, fontSize: 12),
                    text: 'Already a student at Gurukul?'),
                const WidgetSpan(
                    child: SizedBox(
                  width: 10,
                )),
                WidgetSpan(
                  child: InkWell(
                    onTap: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(color: orange),
                    ),
                  ),
                )
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
