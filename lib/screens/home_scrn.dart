import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';

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
          CircleAvatar(
            child: Text(
              'Custom Painter',
              style: bodyText1(color: white),
            ),
            backgroundColor: orange,
            radius: 100,
          ),
          const SizedBox(height: 20,),

          //your schedule container
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            width: double.infinity,
            decoration: const BoxDecoration(
              boxShadow: [BoxShadow(
                spreadRadius: 2,
                color: Colors.white
                )],
                // color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
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
                      children:  [
                        //text
                        Text(
                            'Book a session with your Guru now to test your skills.',style: bodyText1(color: white),),
                        const SizedBox(
                          height: 30,
                        ),

                        //button
                        const Padding(
                          padding: EdgeInsets.only(left: 220.0),
                          child: CircleAvatar(
                            radius: 24,
                            backgroundColor: white,
                            child: Icon(
                              Icons.add,
                              color: orange,
                              size: 32,
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
