
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../constant.dart';

class DateTimeDigitalWatch extends StatefulWidget {
  const DateTimeDigitalWatch({Key? key}) : super(key: key);

  @override
  State<DateTimeDigitalWatch> createState() => _DateTimeDigitalWatchState();
}

class _DateTimeDigitalWatchState extends State<DateTimeDigitalWatch> {
  var formattedTime = DateFormat('h : mm').format(DateTime.now());

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        formattedTime = DateFormat('h : mm').format(DateTime.now());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formattedTime = DateFormat('h : mm').format(now);
    var formattedDate = DateFormat('EEE,d').format(now);
    var ampmformated = DateFormat('a').format(now);
    return Container(
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
          Text(ampmformated,
              textAlign: TextAlign.center,
              style: bodyText1(color: Colors.black)),
          Text(formattedTime,
              textAlign: TextAlign.center, style: headline1(color: orange)),
          Text(formattedDate,
              textAlign: TextAlign.center,
              style: bodyText3(color: Colors.black)),
        ],
      ),
    );
  }
}
