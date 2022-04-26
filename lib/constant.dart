import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primary = Color.fromARGB(255, 121, 27, 27);
const orange = Color(0XFFFF7A3E);
const white = Colors.white;
const textColor = Color(0XFF455A64);
//screen height
double scHeight(context) {
  return MediaQuery.of(context).size.height;
}

//screen width
double scWidth(context) {
  return MediaQuery.of(context).size.width;
}

TextStyle bodyText1({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 16, color: color, fontWeight: FontWeight.w500);
}

TextStyle bodyText2({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 14, color: color, fontWeight: FontWeight.w500);
}

TextStyle headline1({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 20, color: color, fontWeight: FontWeight.w700);
}

showCustomAlertBox(context) {
  return showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text('some'),


          // title: ,
        );

        //  Column(
        //   children: [
        //     Container(
        //       decoration: const BoxDecoration(
        //           color: orange,
        //           borderRadius: BorderRadius.only(
        //               topLeft: Radius.circular(8),
        //               topRight: Radius.circular(8))),
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           const Text('Reminder'),
        //           IconButton(
        //               onPressed: () {
        //                 Navigator.pop(context);
        //               },
        //               icon: const Icon(Icons.close)),
        //         ],
        //       ),
        //     ),
        //     Container(
        //       decoration: const BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.only(
        //               bottomLeft: Radius.circular(8),
        //               bottomRight: Radius.circular(8))),
        //     )
        //   ],
        // );
      });
}

final List<String> genderList = ['Male', 'Female', 'Others'];
