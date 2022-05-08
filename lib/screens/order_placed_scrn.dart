import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';

class OrderPlacedScrn extends StatelessWidget {
  static String routName = '/order_placed_scrn';
  const OrderPlacedScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset('assets/images/order.gif'),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              'Your order has been placed. You will soon be notified about the time of arrival of your flute.',
              textAlign: TextAlign.center,
              style: bodyText1(color: textColor),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
