import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/DigitalWatch/custom_date_time.dart';
import '../../../constant.dart';

class DigitalWatch extends StatefulWidget {
  const DigitalWatch({Key? key}) : super(key: key);

  @override
  State<DigitalWatch> createState() => _DigitalWatchState();
}

class _DigitalWatchState extends State<DigitalWatch> {
  @override
  Widget build(BuildContext context) {
    return //custom painter
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
              decoration:
                  const BoxDecoration(color: white, shape: BoxShape.circle),
            ),
          ),
          const Align(
              alignment: Alignment.center, child: DateTimeDigitalWatch())
        ],
      ),
    );
  }
}
