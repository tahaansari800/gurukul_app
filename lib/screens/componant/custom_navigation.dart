import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/calendar_scrn.dart';
import 'package:grukul_schedular_app/screens/home_scrn.dart';
import 'package:grukul_schedular_app/screens/notice_board_scrn.dart';
import 'package:grukul_schedular_app/screens/your_schedule_scrn.dart';
import 'package:lottie/lottie.dart';
import '../myprofile/profile_scrn.dart';

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
    const CustomPaint()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.pushNamed(context, CalendarScrn.routName);
        },
        child: SizedBox(
          height: 60,
          width: 50,
          child: Lottie.asset('assets/icons/lf30_editor_1subxdkr.json'),
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
              text: 'Home',
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
              text: 'Music',
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
              text: 'Notice',
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
              text: 'Profile',
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
  final String text;
  final String unselectIcon;
  final Function() onPressed;

  const IconBottomBar(
      {key,
      required this.selected,
      required this.onPressed,
      required this.selectIcon,
      required this.unselectIcon,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: IconButton(
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
                    ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              text,
              style: selected
                  ? bodyText2(color: orange)
                  : bodyText3(color: textColor),
            ),
          ),
        ],
      ),
    );
  }
}
