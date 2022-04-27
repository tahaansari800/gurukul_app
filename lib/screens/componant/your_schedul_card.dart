import 'package:flutter/material.dart';

import '../../constant.dart';
import 'custom_button.dart';

///custom schdule card
class YourScheduleCard extends StatelessWidget {
  const YourScheduleCard({
    Key? key,
    required this.title,
    required this.time,
    required this.date,
    required this.statusText,
    required this.statusBtn,
  }) : super(key: key);

  final String title;
  final String time;
  final String date;
  final String statusText;
  final String statusBtn;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: scHeight(context) / 5,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: orange,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //title text
              Text(
                title,
                style: headline2(color: white),
              ),
              IconButton(
                onPressed: () {
                  alertButton(context);
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: white,
                ),
              )
            ],
          ),

          //times
          Text(
            time,
            style: bodyText1(color: white),
          ),

          //dates
          Text(
            date,
            style: bodyText2(color: white),
          ),

          // status in text and button
          Row(
            children: [
              SizedBox(
                //status in text
                child: Text(
                  statusText,
                  style: bodyText1(color: white),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              //status in button
              Expanded(
                child: CustomButton(
                    ontap: () {},
                    text: statusBtn,
                    textColor: orange,
                    btnColor: white),
              ),
            ],
          )
        ],
      ),
    );
  }

  alertButton(context) {
    return showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {},
                  title: const Text('Reshedule Class'),
                ),
                const Divider(
                  thickness: 1,
                  color: orange,
                ),
                ListTile(
                  onTap: () {},
                  title: const Text('Cancel Class'),
                ),
              ],
            ),
          );
        });
  }
}
