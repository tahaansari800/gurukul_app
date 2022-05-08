import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';

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

            Expanded(
              child: ListView.builder(
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
    );
  }
}
