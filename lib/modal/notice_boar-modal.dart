import 'package:flutter/material.dart';

class NoticeBoardModal {
  String text;
  bool isUnread;
  NoticeBoardModal({
    required this.text,
    required this.isUnread,
  });
}

List noticeBoardList = [
  NoticeBoardModal(
      isUnread: true,
      text:
          'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.'),
  NoticeBoardModal(
      isUnread: false,
      text:
          'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.'),
  NoticeBoardModal(
      isUnread: false,
      text:
          'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.'),
  NoticeBoardModal(
      isUnread: false,
      text:
          'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.'),
];
