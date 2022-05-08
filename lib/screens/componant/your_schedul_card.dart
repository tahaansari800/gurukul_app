import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_class_mode_scrn.dart';

import '../../constant.dart';
import 'custom_button.dart';

///custom schdule card
class YourScheduleCard extends StatefulWidget {
  const YourScheduleCard({
    Key? key,
    required this.title,
    required this.time,
    required this.date,
    required this.statusText,
    required this.statusBtn,
  }) : super(key: key);

  final String title;
  final String time;
  final String date;
  final String statusText;
  final String statusBtn;

  @override
  State<YourScheduleCard> createState() => _YourScheduleCardState();
}

class _YourScheduleCardState extends State<YourScheduleCard> {
  Object? isClass;
  final List<String> isClassList = ['Reshedule Class', 'Cancel Class'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: scHeight(context) / 5,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: orange,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title text
              Text(
                widget.title,
                style: headline2(color: white),
              ),
              //popup menu
              PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert,
                  color: white,
                ),
                onSelected: (value) {
                  if (value == 0) {
                    Navigator.pushNamed(
                        context, ScheduleClassModeScrn.routName);

                    log('reshedul classes');
                  } else if (value == 1) {
                    log('cancel classes');
                  }
                },
                itemBuilder: (context) {
                  return [
                    const PopupMenuItem<int>(
                      value: 0,
                      child: Text("Reshedule Classes"),
                    ),
                    const PopupMenuItem<int>(
                      value: 1,
                      child: Text("Cancel Classes"),
                    ),
                  ];
                },
              ),
            ],
          ),

          //times
          Text(
            widget.time,
            style: bodyText1(color: white),
          ),

          //dates
          Text(
            widget.date,
            style: bodyText2(color: white),
          ),

          // status in text and button
          Row(
            children: [
              SizedBox(
                //status in text
                child: Text(
                  widget.statusText,
                  style: bodyText1(color: white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              //status in button
              Expanded(
                child: CustomButton(
                    ontap: () {},
                    text: widget.statusBtn,
                    textColor: orange,
                    btnColor: white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
