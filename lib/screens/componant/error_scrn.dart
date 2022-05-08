import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';

class ErrorScrn extends StatelessWidget {
  const ErrorScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {},
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const Spacer(),
            // SvgPicture.asset('assets/images/pana.svg'),
            SvgPicture.asset('assets/images/pan2.svg'),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'We’re sorry, the page you requested could not be found. Please go back to the homepage.',
                textAlign: TextAlign.center,
                style: bodyText1(color: textColor),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
