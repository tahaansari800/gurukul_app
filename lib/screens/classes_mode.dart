import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/otp_scrn.dart';

import '../constant.dart';

class Classedmode extends StatelessWidget {
  static String routName = '/classedMode';
  const Classedmode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: '',
        ontap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Text(
              'Where would you like you classes \nto take place?',
              textAlign: TextAlign.center,
              style: headline1(color: textColor),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: scWidth(context) / 3.5,
                  height: scHeight(context) / 4.2,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))
                  ], color: orange, borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //circle avatar
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.black,
                        child: Text('main'),
                      ),
                      Spacer(),
                      //text
                      Text(
                        'Bansuri',
                        style: TextStyle(color: white),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  width: scWidth(context) / 3.5,
                  height: scHeight(context) / 4.2,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))
                  ], color: orange, borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //circle avatar
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.black,
                        child: Text('main'),
                      ),
                      Spacer(),
                      //text
                      Text(
                        'Bansuri',
                        style: TextStyle(color: white),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ],
            ),
            //button
            const Spacer(
              flex: 2,
            ),
            CustomButton(
                ontap: () {
                  Navigator.pushNamed(context, OtpScrn.routName);
                },
                text: 'Send OTP',
                textColor: white,
                btnColor: orange),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
