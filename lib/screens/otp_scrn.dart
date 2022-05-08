import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';

import 'componant/custom_appbar.dart';

class OtpScrn extends StatefulWidget {
  static String routName = '/otp_screen';
  const OtpScrn({Key? key, required this.mobileNo}) : super(key: key);
  final String mobileNo;

  @override
  State<OtpScrn> createState() => _OtpScrnState();
}

class _OtpScrnState extends State<OtpScrn> {
  int secondsRemaining = 30;
  bool enableResend = false;
  Timer? timer;

  void resendCode() {
    setState(() {
      secondsRemaining = 30;
      enableResend = false;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (secondsRemaining != 0) {
        setState(() {
          secondsRemaining--;
        });
      } else {
        setState(() {
          enableResend = true;
        });
      }
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

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
            Center(
              child: Text(
                'Enter 4-digit code sent to you at \n${widget.mobileNo}',
                textAlign: TextAlign.center,
                style: const TextStyle(color: textColor),
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
                  onTap: enableResend ? resendCode : () {},
                  child: enableResend == true
                      ? const Text(
                          'Resend OTP',
                          style: TextStyle(color: orange),
                        )
                      : Text(
                          '$secondsRemaining',
                          style: const TextStyle(color: orange),
                        ),
                ),
              )
            ])),
            const Spacer(),
            CustomButton(
                ontap: () {
                  // showCustomAlertBox(
                  //   context: context,
                  //     body:
                  //         'Gentle reminder that you fee for this month is due. Kindly clear it to continue with the classes.',
                  //     title: 'Reminder');

                  Navigator.pushNamed(context, CustomBottomNavigation.routName);
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
