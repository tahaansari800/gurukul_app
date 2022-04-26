import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';
import 'package:grukul_schedular_app/screens/pasions_scrn.dart';

import 'componant/custom_appbar.dart';

class OtpScrn extends StatelessWidget {
  static String routName = '/otp_screen';
  const OtpScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Verify Phone',
        ontap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Center(
              child: Text(
                'Enter 4-digit code sent to you at \n7028988148',
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //otp round text field
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 56,
                  width: 56,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 56,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 56,
                  child: TextField(
                    onChanged: (value) {
                      if (value.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
                SizedBox(
                  height: 56,
                  width: 56,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text.rich(TextSpan(children: [
              const TextSpan(
                  style: TextStyle(color: textColor, fontSize: 12),
                  text: 'Did not recive an otp ?'),
              const WidgetSpan(
                  child: SizedBox(
                width: 10,
              )),
              WidgetSpan(
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Resend OTP',
                    style: TextStyle(color: orange),
                  ),
                ),
              )
            ])),
            const Spacer(),
            CustomButton(
                ontap: () {
                  showCustomAlertBox(context);
                  // Navigator.pushNamed(context, HomeScrn.routName);
                },
                text: 'Continue',
                textColor: white,
                btnColor: orange),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
