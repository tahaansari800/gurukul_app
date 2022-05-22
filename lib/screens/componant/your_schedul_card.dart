import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/modal/schedule_card_modal.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_class_mode_scrn.dart';

import '../../constant.dart';
import 'custom_button.dart';

///custom schdule card
class YourScheduleCard extends StatelessWidget {
  static String routName = '/your_schedule_card';
  YourScheduleCard({Key? key, required this.scheduleCardModal})
      : super(key: key);

  final ScheduleCardModal scheduleCardModal;

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
        color:scheduleCardModal.isUnread? orange:notificationRed,
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
                scheduleCardModal.title,
                style: headline2(color:scheduleCardModal.isUnread?white:textColor),
              ),
              //popup menu
              PopupMenuButton(
                icon:  Icon(
                  Icons.more_vert,
                  color: scheduleCardModal.isUnread?white:textColor,
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
            scheduleCardModal.time,
            style: bodyText1(color: scheduleCardModal.isUnread?white:textColor),
          ),

          //dates
          Text(
            scheduleCardModal.date,
            style: bodyText2(color: scheduleCardModal.isUnread?white:textColor),
          ),

          // status in text and button
          Row(
            children: [
              SizedBox(
                //status in text
                child: Text(
                  scheduleCardModal.timeStart,
                  style: bodyText1(color: scheduleCardModal.isUnread?white:textColor),
                ),
              ),
              const Spacer(),
              //status in button
              SizedBox(
                width: scWidth(context) / 3.15,
                child: CustomButton(
                    ontap: () {},
                    text: scheduleCardModal.btnStatus,
                    textColor: scheduleCardModal.isUnread?orange:textColor,
                    btnColor: white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
