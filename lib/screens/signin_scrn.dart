import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/otp_scrn.dart';
import 'package:grukul_schedular_app/screens/singup_scrn.dart';

import '../constant.dart';

class SignInScrn extends StatelessWidget {
  static String routName = '/sign_in';
  SignInScrn({Key? key}) : super(key: key);

  TextEditingController mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //images
              Image.asset(
                'assets/images/signn_in_screen.png',
                scale: 1.3,
              ),
              Text(
                'Sign in',
                style: headline1(color: textColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Enter your mobile number and we will \n send you OTP to verify',
                style: bodyText1(color: textColor),
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: mobileNoController,
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
                    // Navigator.pushNamed(context, OtpScrn.routName);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                OtpScrn(mobileNo: mobileNoController.text)));
                  },
                  text: 'Send OTP',
                  textColor: white,
                  btnColor: orange),
              const SizedBox(
                height: 20,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                  style: bodyText2(color: textColor),
                  text: 'Or login with ',
                ),
                WidgetSpan(
                    child: InkWell(
                  onTap: () {},
                  child:
                      Text('social networks', style: bodyText2(color: orange)),
                )),
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
                height: 20,
              ),
              Text.rich(TextSpan(children: [
                const TextSpan(
                    style: TextStyle(color: textColor, fontSize: 12),
                    text: 'New to Gurukul?'),
                const WidgetSpan(
                    child: SizedBox(
                  width: 10,
                )),
                WidgetSpan(
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, SignUpScrn.routName);
                    },
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
      )),
    );
  }
}
