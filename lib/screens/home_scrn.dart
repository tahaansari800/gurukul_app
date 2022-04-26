import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componant/drawer.dart';

class HomeScrn extends StatelessWidget {
  static String routName = '/home_screen';
  const HomeScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text(
          'black',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          SizedBox(
            child: SvgPicture.asset('assets/images/fi-rr-money.svg')),
          Center(child: Text('homeScreen')),
        ],
      ),
    );
  }
}

