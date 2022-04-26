import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import 'package:grukul_schedular_app/screens/details_scrn.dart';

class PasionScrn extends StatelessWidget {
  static String routName = '/passion_screen';
  const PasionScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: '', ontap: () { 
          Navigator.pop(context);
         },
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
                Container(
                  height: scHeight(context) / 3.5,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))
                  ], color: orange, borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //circle avatar
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Text('main'),
                      ),
                      Spacer(),
                      //text
                      Text(
                        'Bansuri',
                        style: TextStyle(color: white),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  height: scHeight(context) / 3.5,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))
                  ], color: orange, borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //circle avatar
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Text('main'),
                      ),
                      Spacer(),
                      //text
                      Text(
                        'Bansuri',
                        style: TextStyle(color: white),
                      ),
                      Spacer()
                    ],
                  ),
                ),
                Container(
                  height: scHeight(context) / 3.5,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, offset: Offset(0, 0))
                  ], color: orange, borderRadius: BorderRadius.circular(50)),
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //circle avatar
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.black,
                        child: Text('main'),
                      ),
                      Spacer(),
                      //text
                      Text(
                        'Bansuri',
                        style: TextStyle(color: white),
                      ),
                      Spacer()
                    ],
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
