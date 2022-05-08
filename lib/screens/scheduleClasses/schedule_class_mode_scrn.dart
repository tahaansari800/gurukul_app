import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_scrn.dart';

import '../../constant.dart';

class ScheduleClassModeScrn extends StatefulWidget {
  static String routName = '/schedule_mode_screen';
  const ScheduleClassModeScrn({Key? key}) : super(key: key);

  @override
  State<ScheduleClassModeScrn> createState() => _ScheduleClassModeScrnState();
}

class _ScheduleClassModeScrnState extends State<ScheduleClassModeScrn> {
  String selected = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Schedule Your Classes',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              'How would you like you classes?',
              textAlign: TextAlign.center,
              style: headline1(color: textColor),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = 'individualClasses';
                      log(selected.toString());
                      // if (selected == 'individualClasses') {
                      // }
                      Navigator.pushNamed(context, ScheduleSrn.routName);
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
                        color: selected == 'individualClasses' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          // backgroundColor: white,
                          radius: 42,
                          child: SvgPicture.asset(
                              'assets/images/indivisual_class.svg'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Individual \nClasses',
                          textAlign: TextAlign.center,
                          style: bodyText1(
                            color: selected == 'individualClasses'
                                ? white
                                : Colors.black,
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
                      selected = 'groupClasses';
                      log(selected.toString());
                      // if (selected == 'groupClasses') {
                      // }
                      Navigator.pushNamed(context, ScheduleSrn.routName);
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
                        color: selected == 'groupClasses' ? orange : white,
                        borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //circle avatar
                        CircleAvatar(
                          radius: 42,
                          // backgroundColor: const Color(0xFFFFFFEB),
                          backgroundColor: white,
                          child: SvgPicture.asset(
                              'assets/images/group_classes.svg'),
                        ),
                        const Spacer(),
                        //text
                        Text(
                          'Group \nClasses',
                          textAlign: TextAlign.center,
                          style: bodyText1(
                            color: selected == 'groupClasses'
                                ? white
                                : Colors.black,
                          ),
                        ),
                        const Spacer()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
