import 'package:flutter/material.dart';
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
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        Text(
                          'Gentle reminder that you fee for this month is due. Kindly clear it to avoid any inconvenience.',
                          style: bodyText1(color: textColor),
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
                                textColor: orange,
                                btnColor: white),
                          ),
                        ),
                      ]),
                    ),
                  );
                },
              ),
              //
            ],
          ),
        ),
      ),
    );
  }
}
