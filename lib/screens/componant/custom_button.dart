import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.ontap,
      required this.text,
      required this.textColor,
      required this.btnColor})
      : super(key: key);
  final VoidCallback ontap;
  final String text;
  final Color textColor;
  final Color btnColor;
  // final bool isBorder = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: scHeight(context) * 0.06,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                // side: const BorderSide(width: 1, color: orange),
                borderRadius: BorderRadius.circular(20)),
            primary: btnColor,
          ),
          onPressed: ontap,
          child: Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w800),
          )),
    );
    // InkWell(
    //   onTap: ontap,
    //   child: Container(
    //     alignment: Alignment.center,
    //     height: scHeight(context) * 0.06,
    //     width: double.infinity,
    //     decoration: BoxDecoration(
    //         border: Border.all(color: orange),
    //         color: btnColor,
    //         borderRadius: BorderRadius.circular(20)),
    //     child: Text(
    //       text,
    //       style: TextStyle(
    //           color: textColor, fontSize: 16, fontWeight: FontWeight.w800),
    //     ),
    //   ),
    // );
  }
}
