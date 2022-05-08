import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';

class PaymentsScrn extends StatelessWidget {
  static String routName = '/payment_scrn';
  const PaymentsScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Payments',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(10)),
              child: Text(
                'Your fee for the month of April is pending. Please pay to avoid any inconvenience.',
                style: bodyText1(color: textColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(10)),
              child: Text(
                '₹ 1500',
                style: bodyText1(color: textColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Classes attended on:',
                style: bodyText1(color: Colors.black),
              ),
            ),
            const Divider(
              color: orange,
              thickness: 1,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return classAttendList();
                },
              ),
            ),
            const SizedBox(height: 10,),
            CustomButton(
                ontap: () {},
                text: 'Pay Now',
                textColor: white,
                btnColor: orange),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  ///list of attended class
  Container classAttendList() {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '01/04/2022',
            style: bodyText2(color: textColor),
          ),
          Text(
            '3:00PM - 4:00PM',
            style: bodyText2(color: textColor),
          ),
        ],
      ),
    );
  }
}
