class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(11, 'JAN', 'OOAD', 'Monday', '9:00am'),
  DataSheet(12, 'JAN', 'OB', 'Tuesday', '10:00am'),
  DataSheet(13, 'JAN', 'AI', 'Wednesday', '9:30am'),
  DataSheet(14, 'JAN', 'MIS ', 'Thursday', '11:00am'),
  DataSheet(15, 'JAN', 'OM', 'Friday', '9:00am'),
  DataSheet(16, 'JAN', 'BS', 'Saturday', '11:00am'),
];
