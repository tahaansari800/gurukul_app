import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';

class ProfileScrn extends StatelessWidget {
  const ProfileScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isappTitleIcon: true,
        appBar: AppBar(),
        ontap: () {
          Navigator.pushNamed(context, CustomBottomNavigation.routName);
        },
        title: ' Your Profile',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  //profile photo
                  const CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 40,
                  ),
                  Positioned(
                      bottom: -3,
                      right: -5,
                      child: InkWell(
                        onTap: () {
                          //add camera functionlity to upload profiile photo
                        },
                        child: SizedBox(
                            child: CircleAvatar(
                                backgroundColor: orange,
                                radius: 14,
                                child: SvgPicture.asset(
                                  'assets/icons/fi-rr-camera.svg',
                                  height: 14,
                                  width: 14,
                                ))),
                      )),
                ],
              ),
            ),
            const Spacer(),
            ListView(
              shrinkWrap: true,
              children: [
                const Divider(
                  thickness: 1,
                  color: orange,
                ),
                listTile(text: 'Name:', data: 'Shruti Pandey'),
                listTile(text: 'Phone:', data: '9591919100'),
                listTile(text: 'Email ID:', data: 'student@account.com'),
                listTile(text: 'Address:', data: 'Mumbai, India'),
                listTile(text: 'Gender:', data: 'Female'),
                listTile(text: 'Mode of Class:', data: 'Offline'),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget listTile({required String text, required String data}) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: bodyText1(color: textColor),
            ),
            Text(
              data,
              style: bodyText1Bold(color: textColor),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      const Divider(
        color: orange,
        thickness: 1,
      ),
    ]);
  }

}
