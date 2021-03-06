import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/details_scrn.dart';

class PasionScrn extends StatefulWidget {
  static String routName = '/passion_screen';
  const PasionScrn({Key? key}) : super(key: key);

  @override
  State<PasionScrn> createState() => _PasionScrnState();
}

class _PasionScrnState extends State<PasionScrn> {
  String? selected = '';
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
       SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Whats your passion?',
              style: headline1(color: textColor),
            ),
            const Spacer(
              flex: 1,
            ),
            //custom container
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    setState(() {
                      selected = 'bansuri';
                      log(selected.toString());
                    });
                  },
                  child: Container(
                    height: scHeight(context) / 3.5,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 0))
                        ],
                        color: selected == 'bansuri' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: Image.asset('assets/images/bansuri.png'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Bansuri',
                          style: bodyText1(
                              color:
                                  selected == 'bansuri' ? white : Colors.black),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'vocal';
                      log(selected.toString());
                    });
                  },
                  child: Container(
                    height: scHeight(context) / 3.5,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 0))
                        ],
                        color: selected == 'vocal' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child: Image.asset('assets/images/vocal.png'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Vocal',
                          style: bodyText1(
                              color:
                                  selected == 'vocal' ? white : Colors.black),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'dhrupadBansuri';
                      log(selected.toString());
                    });
                  },
                  child: Container(
                    height: scHeight(context) / 3.5,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              blurRadius: 15,
                              offset: const Offset(0, 0))
                        ],
                        color: selected == 'dhrupadBansuri' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.black,
                          child:
                              Image.asset('assets/images/dhrupad_bansuri.png'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Dhrupad\nBansuri',
                          style: bodyText1(
                              color: selected == 'dhrupadBansuri'
                                  ? white
                                  : Colors.black),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            CustomButton(
                ontap: () {
                  Navigator.pushNamed(context, DetailsScrn.routName);
                },
                text: 'Next',
                textColor: white,
                btnColor: orange),
            const Spacer(),
          ],
        ),
      )),
    
    );
  }
}
