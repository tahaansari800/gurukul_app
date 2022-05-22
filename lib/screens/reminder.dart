import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/modal/reminder_modal.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';

import '../constant.dart';

class Reminder extends StatelessWidget {
  static String routName = '/reminder';
  const Reminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Reminder',
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: reminderList.length,
                itemBuilder: (context, index) {
                  return reminderWidget(
                      context: context, reminderModal: reminderList[index]);
                },
              ),
              //
            ],
          ),
        ),
      ),
    );
  }

  Widget reminderWidget(
      {required BuildContext context, required ReminderModal reminderModal}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: reminderModal.isUnread ? orange : notificationRed,
            borderRadius: BorderRadius.circular(10)),
        child: Column(children: [
          Text(
            reminderModal.text,
            style: bodyText1(
                color: reminderModal.isUnread ? textColor : Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: scHeight(context) * 0.05,
              width: scWidth(context) / 3,
              child: CustomButton(
                  ontap: () {
                    //onpress
                  },
                  text: 'Pay Now',
                  textColor: reminderModal.isUnread ? orange : textColor,
                  btnColor: white),
            ),
          ),
        ]),
      ),
    );
  }
}
