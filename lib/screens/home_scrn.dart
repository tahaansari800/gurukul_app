import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/scheduleClasses/schedule_class_mode_scrn.dart';
import 'componant/drawer.dart';

class HomeScrn extends StatelessWidget {
  static String routName = '/home_screen';
  const HomeScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        toolbarHeight: 80,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text.rich(TextSpan(children: [
            TextSpan(
                style: bodyText1(color: Colors.black), text: 'Hi, Student\n'),
            TextSpan(style: bodyText2(color: textColor), text: 'Mumbai, India'),
          ])),
          const CircleAvatar(
            backgroundColor: orange,
            radius: 25,
          )
        ]),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          //custom painter
          Container(
            height: 230,
            width: 230,
            decoration: BoxDecoration(
                border: Border.all(color: orange, width: 15),
                // color: orange,
                shape: BoxShape.circle),
            child: Stack(
              children: [
                // Text(
                //   'Custom Painter',
                //   style: bodyText1(color: white),
                // ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 198,
                    width: 198,
                    decoration: const BoxDecoration(
                        color: white, shape: BoxShape.circle),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 0),
                          spreadRadius: 5,
                          blurRadius: 15,
                          color: Colors.grey.withOpacity(0.2))
                    ], color: white, shape: BoxShape.circle),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('PM',
                            textAlign: TextAlign.center,
                            style: bodyText1(color: Colors.black)),
                        Text('7:30',
                            textAlign: TextAlign.center,
                            style: headline1(color: orange)),
                        Text('Fri 15',
                            textAlign: TextAlign.center,
                            style: bodyText3(color: Colors.black)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          //your schedule container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            width: double.infinity,
            decoration: const BoxDecoration(
                boxShadow: [BoxShadow(spreadRadius: 2, color: Colors.white)],
                // color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Your Schedule',
                  style: headline2(color: textColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: orange, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        //text
                        Text(
                          'Book a session with your Guru now to test your skills.',
                          style: bodyText1(color: white),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        //button
                        Padding(
                          padding: const EdgeInsets.only(left: 220.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ScheduleClassModeScrn.routName);
                            },
                            child: const CircleAvatar(
                              radius: 24,
                              backgroundColor: white,
                              child: Icon(
                                Icons.add,
                                color: orange,
                                size: 32,
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
