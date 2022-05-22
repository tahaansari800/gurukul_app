import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grukul_schedular_app/constant.dart';
import 'package:grukul_schedular_app/modal/notice_boar-modal.dart';
import 'package:grukul_schedular_app/screens/componant/custom_appbar.dart';
import 'package:grukul_schedular_app/screens/componant/custom_navigation.dart';

class NoticeBoardScrn extends StatelessWidget {
  static String routName = '/notice_board_scrn';
  const NoticeBoardScrn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        ontap: () {
          Navigator.pushNamed(context, CustomBottomNavigation.routName);
        },
        title: 'Notice Board',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(children: [
            ListView.builder(
              primary: false,
              itemCount: noticeBoardList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return NoticeBoardCard(
                    noticeBoardModal: noticeBoardList[index]);
              },
            ),
          ]),
        ),
      ),
    );
  }
}

class NoticeBoardCard extends StatelessWidget {
  const NoticeBoardCard({
    Key? key,
    required this.noticeBoardModal,
  }) : super(key: key);

  final NoticeBoardModal noticeBoardModal;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        // constraints:  BoxConstraints(
        //   maxHeight: double.infinity,
        // ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        // height: scHeight(context) / 6,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:
                noticeBoardModal.isUnread == true ? orange.withOpacity(0.8) : notificationRed),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                child: SvgPicture.asset(
              'assets/icons/fi-rr-dart.svg',
              color: noticeBoardModal.isUnread == false ? Colors.black : white,
            )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(
                noticeBoardModal.text,
                style: bodyText1(
                    color:
                        noticeBoardModal.isUnread == false ? textColor : white),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
