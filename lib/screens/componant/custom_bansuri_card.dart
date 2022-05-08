import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/componant/custom_button.dart';
import '../../constant.dart';

class CustomBansuriCard extends StatelessWidget {
  const CustomBansuriCard({
    Key? key,
    required this.text,
    required this.desc,
    required this.ontap,
  }) : super(key: key);
  final String text;
  final String desc;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        // padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        width: double.infinity,
        height: scHeight(context) / 5.3,
        decoration: BoxDecoration(
            color: orange, borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            //add images
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/flutes_scrn.png',
                  fit: BoxFit.cover,
                )),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //add text
                    Text(
                      text,
                      style: headline2(color: white),
                    ),
                    Text(
                      desc,
                      style: bodyText1(color: white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    SizedBox(
                      width: scWidth(context) * 0.35,
                      height: scHeight(context) * 0.05,
                      child: CustomButton(
                          ontap: ontap,
                          text: 'View Details',
                          textColor: orange,
                          btnColor: white),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
