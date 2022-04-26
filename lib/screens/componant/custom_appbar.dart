import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    required this.appBar,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  final AppBar appBar;
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title,
        ),
        leading: InkWell(
          onTap: ontap,
          child: Container(
            height: scHeight(context) * 0.02,
            decoration: const BoxDecoration(
                color: orange,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: const Icon(CupertinoIcons.chevron_left,color: Colors.white),
          ),
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
