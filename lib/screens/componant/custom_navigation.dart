import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/error_scrn.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';
import 'package:grukul_schedular_app/screens/myprofile/profile_scrn.dart';
import 'package:grukul_schedular_app/screens/notice_board_scrn.dart';
import 'package:grukul_schedular_app/screens/your_schedule_scrn.dart';

class CustomBottomNavigation extends StatefulWidget {
  static String routName = '/custom_navigation';
  const CustomBottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  ///change color of floating actionbutton
  ///if true it will white else orange color
  bool floatingBtnColor = false;

  List<Widget> screens = [
    const HomeScrn(),
    const YourScheduleScrn(),
    const NoticeBoardScrn(),
    // const ErrorScrn(),
    const ProfileScrn(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          backgroundColor: floatingBtnColor == false ? orange : white,
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: floatingBtnColor == false ? white : orange,
            size: 30,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: scHeight(context) * 0.09,
        child: BottomAppBar(
          // notchMargin: 3,
          shape: const CircularNotchedRectangle(),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconBottomBar(
              selected: _selectedIndex == 0,
              onPressed: () {
                floatingBtnColor = false;

                setState(() {
                  _selectedIndex = 0;
                });
              },
              selectIcon: 'assets/icons/fi-rr-home.svg',
              unselectIcon: 'assets/icons/fi-sr-home.svg',
            ),
            IconBottomBar(
              selected: _selectedIndex == 1,
              onPressed: () {
                floatingBtnColor = true;

                setState(() {
                  _selectedIndex = 1;
                });
              },
              selectIcon: 'assets/icons/fi-rr-music-alt.svg',
              unselectIcon: 'assets/icons/fi-sr-music-alt.svg',
            ),
            IconBottomBar(
              selected: _selectedIndex == 2,
              onPressed: () {
                floatingBtnColor = true;
                setState(() {
                  _selectedIndex = 2;
                });
              },
              selectIcon: 'assets/icons/fi-rr-dart.svg',
              unselectIcon: 'assets/icons/fi-sr-dart.svg',
            ),
            IconBottomBar(
              selected: _selectedIndex == 3,
              onPressed: () {
                floatingBtnColor = false;

                setState(() {
                  _selectedIndex = 3;
                });
              },
              selectIcon: 'assets/icons/fi-rr-user.svg',
              unselectIcon: 'assets/icons/fi-sr-user.svg',
            ),
          ]),
        ),
      ),
      body: screens[_selectedIndex],
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final bool selected;
  final String selectIcon;
  final String unselectIcon;
  final Function() onPressed;

  const IconBottomBar(
      {key,
      required this.selected,
      required this.onPressed,
      required this.selectIcon,
      required this.unselectIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: selected
            ? SvgPicture.asset(
                unselectIcon,
                height: 24,
                width: 24,
              )
            : SvgPicture.asset(
                selectIcon,
                height: 24,
                width: 24,
              ));
  }
}
