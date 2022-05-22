class ScheduleCardModal {
  String title;
  String time;
  String date;
  String timeStart;
  String btnStatus;
  bool isUnread;
  ScheduleCardModal({
    required this.title,
    required this.time,
    required this.date,
    required this.timeStart,
    required this.btnStatus,
    required this.isUnread,
  });
}

List scheduleCardList = [
  ScheduleCardModal(
      date: '15/04/2022',
      time: '03:00PM - 04:00PM',
      timeStart: 'Class starts in 10 minutes',
      title: 'Dhrupad Bansuri Riyaz',
      isUnread: true,
      btnStatus: 'Yet to Start'),
  ScheduleCardModal(
      date: '15/04/2022',
      time: '03:00PM - 04:00PM',
      timeStart: 'Class Finished',
      title: 'Dhrupad Bansuri Riyaz',
      isUnread: false,
      btnStatus: 'Attended'),
  ScheduleCardModal(
      date: '15/04/2022',
      time: '03:00PM - 04:00PM',
      timeStart: 'Class starts in 10 minutes',
      title: 'Dhrupad Bansuri Riyaz',
      isUnread: false,
      btnStatus: 'Not Attend'),
  ScheduleCardModal(
      date: '15/04/2022',
      time: '03:00PM - 04:00PM',
      timeStart: 'Class starts in 10 minutes',
      title: 'Dhrupad Bansuri Riyaz',
      isUnread: false,
      btnStatus: 'Not Attend'),
];
