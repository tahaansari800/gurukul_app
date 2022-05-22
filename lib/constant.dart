import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primary = Color.fromARGB(255, 121, 27, 27);
const orange = Color(0XFFFF7A3E);
const white = Colors.white;
const textColor = Color(0XFF455A64);
const selectedDate = Color(0XFFFFDC3E);
const avialbaleDate = Color(0XFFFF7A3E);
const blockDate = Color(0XFFC4C4C4);
const notificationRed = Color(0XFFF0F0F0);


///Media Query screen height
double scHeight(context) {
  return MediaQuery.of(context).size.height;
}

///media Query screen width
double scWidth(context) {
  return MediaQuery.of(context).size.width;
}

///font size 16 and weight 500
TextStyle bodyText1({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 16, color: color, fontWeight: FontWeight.w500);
}

///font size 16 and weight 700
TextStyle bodyText1Bold({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 16, color: color, fontWeight: FontWeight.w700);
}

///font size 14 and weight 500
TextStyle bodyText2({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 14, color: color, fontWeight: FontWeight.w500);
}

///font size 12 and weight 500
TextStyle bodyText3({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 12, color: color, fontWeight: FontWeight.w500);
}

///font size 20 and weight 700
TextStyle headline1({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 20, color: color, fontWeight: FontWeight.w700);
}

///font size 18 and weight 700
TextStyle headline2({required Color color}) {
  return GoogleFonts.lato(
      fontSize: 18, color: color, fontWeight: FontWeight.w700);
}

///custom Alert dilogue
showCustomAlertBox(
    {required BuildContext context,
    required String title,

    ///islogout true to show yes button
    bool islogOut = false,
    required String body}) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: orange,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              decoration: const BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: bodyText1(color: white),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close,
                          color: white,
                        ))
                  ]),
            ),

            //show description text
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              // height: 40,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    '$body \n',
                    // 'Gentle reminder that you fee for this month is due. Kindly clear it to continue with the classes.',
                    style: bodyText1(color: textColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  islogOut == true
                      ? ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: orange),
                          onPressed: () {
                            //logout function
                          },
                          child: Text(
                            'Yes',
                            style: bodyText2(color: white),
                          ))
                      : const SizedBox(),
                ],
              ),
            ),
          ]),
        );
      });
}

///custom progress indicator
Widget cutsomProgressindicator() {
  return Center(
    child: CircularProgressIndicator(
      backgroundColor: Colors.grey.withOpacity(0.2),
      color: orange,
    ),
  );
}

///gender list
final List<String> genderList = ['Male', 'Female', 'Others'];
