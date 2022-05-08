import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/screens/bansuri_scrn.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';

import 'componant/custom_bansuri_card.dart';

class FlutesScrn extends StatelessWidget {
  static String routName = "/flute_scrn";
  const FlutesScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pop(context);
        },
        title: 'Flutes',
      ),
      body: Column(
        children: [
          CustomBansuriCard(
            desc: 'e-scale measurement ',
            text: 'Bansrui',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BansuriScrn(
                            title: 'Bansrui',
                            prize: '1500',
                          )));
            },
          ),
          CustomBansuriCard(
            desc: 'e-scale measurement ',
            text: 'Dhrupad Bansuri',
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BansuriScrn(
                            title: 'Dhrupad Bansrui',
                            prize: '2500',
                          )));
            },
          ),
        ],
      ),
    );
  }
}
