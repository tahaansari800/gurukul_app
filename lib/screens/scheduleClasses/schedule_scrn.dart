import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/calendar_scrn.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';

import '../../constant.dart';

class ScheduleSrn extends StatefulWidget {
  static String routName = '/schedule_screen';
  const ScheduleSrn({Key? key}) : super(key: key);

  @override
  State<ScheduleSrn> createState() => _ScheduleSrnState();
}

class _ScheduleSrnState extends State<ScheduleSrn> {
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Shedule Your Classes',
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Do you want to...?',
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
                      selected = 'Schedule';
                      log(selected.toString());
                      Navigator.pushNamed(context, CalendarScrn.routName);
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
                        color: selected == 'Schedule' ? orange : white,
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
                          'Schedule',
                          style: bodyText1(
                              color: selected == 'Schedule'
                                  ? white
                                  : Colors.black),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'Re-schedule';
                      log(selected.toString());
                      Navigator.pushNamed(context, CalendarScrn.routName);
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
                        color: selected == 'Re-schedule' ? orange : white,
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
                          'Re-\nschedule',
                          textAlign: TextAlign.center,
                          style: bodyText1(
                              color: selected == 'Re-schedule'
                                  ? white
                                  : Colors.black),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'Cancel';
                      log(selected.toString());
                      Navigator.pushNamed(context, CalendarScrn.routName);
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
                        color: selected == 'Cancel' ? orange : white,
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
                          'Cancel',
                          style: bodyText1(
                              color:
                                  selected == 'Cancel' ? white : Colors.black),
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
          ],
        ),
      )),
    );
  }
}
