import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/otp_scrn.dart';

import '../constant.dart';

class Classedmode extends StatefulWidget {
  static String routName = '/classedMode';
  const Classedmode({Key? key}) : super(key: key);

  @override
  State<Classedmode> createState() => _ClassedmodeState();
}

class _ClassedmodeState extends State<Classedmode> {
  String selected = '';
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
      body: 
      Padding(
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
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'Online';
                      log(selected.toString());
                    });
                  },
                  child: Container(
                    width: scWidth(context) / 3.5,
                    height: scHeight(context) / 4.2,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 0))
                        ],
                        color: selected == 'Online' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          backgroundColor: white,
                          radius: 42,
                          child: Image.asset('assets/images/offline.png'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Online',
                          style: bodyText1(
                            color: selected == 'Online' ? white : Colors.black,
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'Offline';
                      log(selected.toString());
                    });
                  },
                  child: Container(
                    width: scWidth(context) / 3.5,
                    height: scHeight(context) / 4.2,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 0))
                        ],
                        color: selected == 'Offline' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          radius: 42,
                          backgroundColor: const Color(0xFFFFFFEB),
                          child: Image.asset('assets/images/online.png'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Offline',
                          style: bodyText1(
                            color: selected == 'Offline' ? white : Colors.black,
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
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
