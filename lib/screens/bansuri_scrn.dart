import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';

class BansuriScrn extends StatelessWidget {
  static String routName = '/bansuri_screen';
  final String title, prize;
  const BansuriScrn({Key? key, required this.title, required this.prize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: title,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              width: scWidth(context) / 1.5,
              decoration: BoxDecoration(
                  color: orange, borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: [
                  //image
                  Stack(
                    children: [
                      ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          child: Image.asset(
                            'assets/images/flutes_scrn.png',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: scHeight(context) / 3,
                          )),
                      //cart in stack
                      Positioned(
                        top: 10,
                        right: 10,
                        child: InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundColor: white,
                            child: Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  //description text
                  Text(
                    title,
                    style: headline2(color: white),
                  ),
                  Text(
                    'e-scale measurement',
                    style: bodyText1(color: white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pulvinar venenatis, rhoncus nec in integer egestas tellus nunc nunc. Sem donec blandit dolor neque.',
                      textAlign: TextAlign.center,
                      style: bodyText1(color: white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //price
                  Text.rich(TextSpan(children: [
                    TextSpan(style: headline1(color: white), text: '₹'),
                    TextSpan(style: headline1(color: white), text: '  $prize')
                  ])),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
