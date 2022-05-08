import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';
import 'componant/your_schedul_card.dart';

class YourScheduleScrn extends StatelessWidget {
  static String routName = '/your_schedules_screen';
  const YourScheduleScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pushNamed(context, CustomBottomNavigation.routName);
        },
        title: 'Your Schedules',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const YourScheduleCard(
                    date: '15/04/2022',
                    statusBtn: 'Yet to start',
                    statusText: 'Class starts in 10 minutes',
                    time: '03:00PM - 04:00PM',
                    title: 'Dhrupad Bansuri Riyaz',
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
