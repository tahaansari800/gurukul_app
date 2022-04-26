import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: scHeight(context) / 3.3,
            child: DrawerHeader(
                decoration: const BoxDecoration(color: orange),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 240.0),
                      child: IconButton(
                          alignment: Alignment.centerLeft,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 45,
                      child: Image.asset('assets/images/bansuri.png'),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Taha Ansari',
                      style: headline2(color: white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '7028988148',
                      style: bodyText2(color: white),
                    ),
                  ],
                )),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: SvgPicture.asset('assets/images/fi-rr-money.svg'),
            title: Text(
              'My Payments',
              style: bodyText1(color: textColor),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: orange)),
            leading: Stack(clipBehavior: Clip.none, children: [
              SvgPicture.asset('assets/images/fi-rr-shopping-cart.svg'),
              const Positioned(
                left: 18,
                top: -3,
                child: CircleAvatar(
                  backgroundColor: white,
                  radius: 7,
                  child: CircleAvatar(
                    backgroundColor: orange,
                    radius: 5,
                  ),
                ),
              ),
            ]),
            title: Text(
              'My Orders',
              style: bodyText1(color: textColor),
            ),
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: orange)),
            onTap: () {
              Navigator.pop(context);
            },
            leading: SizedBox(
                child: SvgPicture.asset('assets/images/fi-rr-settings.svg')),
            title: Text(
              'Settings',
              style: bodyText1(color: textColor),
            ),
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: orange)),
            onTap: () {
              Navigator.pop(context);
            },
            leading: Stack(clipBehavior: Clip.none, children: [
              SvgPicture.asset('assets/images/fi-rr-thumbtack.svg'),
              const Positioned(
                left: 18,
                top: -3,
                child: CircleAvatar(
                  backgroundColor: white,
                  radius: 7,
                  child: CircleAvatar(
                    backgroundColor: orange,
                    radius: 5,
                  ),
                ),
              ),
            ]),
            title: Text(
              'Reminder',
              style: bodyText1(color: textColor),
            ),
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: orange)),
            onTap: () {
              Navigator.pop(context);
            },
            leading: SizedBox(
                child: Image.asset('assets/images/fi-rr-thumbtack-flute.png')),
            title: Text(
              'Flutes',
              style: bodyText1(color: textColor),
            ),
          ),
          ListTile(
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0.5, color: orange)),
            onTap: () {
              Navigator.pop(context);
            },
            leading: SizedBox(
                child:
                    SvgPicture.asset('assets/images/fi-rr-sign-out-alt.svg')),
            title: Text(
              'Logout',
              style: bodyText1(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}