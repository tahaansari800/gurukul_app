class ReminderModal {
  String text;
  bool isUnread;
  ReminderModal({
    required this.text,
    required this.isUnread,
  });
}

List reminderList = [
  ReminderModal(text: 'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.', isUnread: true),
  ReminderModal(text: 'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.', isUnread: false),
  ReminderModal(text: 'Today’s class at 03:00PM has been cancelled and will be held on Saturday at 03:00PM.', isUnread: false)
  ];
