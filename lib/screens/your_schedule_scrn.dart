import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/modal/schedule_card_modal.dart';
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
                itemCount: scheduleCardList.length,
                itemBuilder: (context, index) {
                  return YourScheduleCard(
                      scheduleCardModal: scheduleCardList[index]);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
