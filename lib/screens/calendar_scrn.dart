import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScrn extends StatelessWidget {
  static String routName = '/calendar_screen';
  const CalendarScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Calendar',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Select Date and Time',
                style: headline2(color: textColor),
              ),
              const SizedBox(
                height: 20,
              ),
              //calendar
              TableCalendar(
                firstDay: DateTime.utc(2021, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
              const SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomButton(
                    ontap: () {},
                    text: 'Select',
                    textColor: white,
                    btnColor: orange),
              ),

              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  calendarColors(
                      color: selectedDate,
                      text: 'Selected Date',
                      context: context),
                  calendarColors(
                      color: avialbaleDate,
                      text: 'Available Date',
                      context: context),
                  calendarColors(
                      color: blockDate, text: 'Blocked Date', context: context),
                ],
              ),

              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                primary: true,
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    width: double.infinity,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: orange)),
                    child: Text(
                      '12:00 PM',
                      style: bodyText1Bold(color: textColor),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              //book class button

              CustomButton(
                  ontap: () {
                    showCustomAlertBox(
                        context: context,
                        title: 'Reminder',
                        body:
                            'Gentle reminder that you fee for this month is due. Kindly clear it to continue with the classes.');
                  },
                  text: 'Book Class',
                  textColor: white,
                  btnColor: orange),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  Row calendarColors(
      {required BuildContext context,
      required String text,
      required Color color}) {
    return Row(
      children: [
        Container(
          height: scHeight(context) * 0.045,
          width: scWidth(context) * 0.045,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: bodyText2(color: textColor),
        )
      ],
    );
  }
}
