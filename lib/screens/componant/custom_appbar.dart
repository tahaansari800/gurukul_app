import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/screens/myprofile/profile_edit_scrn.dart';
import '../../constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBar,
    this.isappTitleIcon = false,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  final AppBar appBar;
  final String title;
  final VoidCallback ontap;
  final bool isappTitleIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        shadowColor: Colors.black.withOpacity(0.08),
        elevation: 3,
        title: Row(children: [
          Text(
            title,
            style: headline1(color: textColor),
          ),
          isappTitleIcon == true
              ? IconButton(
                  onPressed: () {
                    //edit functionlity
                    Navigator.pushNamed(context, EditProfile.routName);
                  },
                  icon: SvgPicture.asset('assets/icons/fi-ss-pencil.svg'))
              : const SizedBox(),
        ]),
        leading: InkWell(
          onTap: ontap,
          child: SizedBox(
            height: scHeight(context) * 0.05,
            child: Container(
              decoration: const BoxDecoration(
                  color: orange,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child:
                  const Icon(CupertinoIcons.chevron_left, color: Colors.white),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
