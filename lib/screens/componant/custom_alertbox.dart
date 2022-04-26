import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';

class CustomAlertBox extends StatelessWidget {
  const CustomAlertBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: orange,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8))),
          child: Row(
            children: [],
          ),
        )
      ],
    );
  }
}
