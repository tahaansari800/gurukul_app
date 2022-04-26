import 'package:flutter/material.dart';
import 'package:grukul_schedular_app/constant.dart';

class HomeScrn extends StatelessWidget {
  static String routName = '/home_screen';
  const HomeScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: orange),
                child: Column(
                  children: const [],
                )),
            const ListTile(
              title: Text('item 1'),
            ),
            const ListTile(
              title: Text('item 2'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'black',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(child: Text('homeScreen')),
        ],
      ),
    );
  }
}
