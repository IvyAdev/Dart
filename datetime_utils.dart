import 'dart:core';

String getFormattedDate(DateTime date) => "${date.year}-${date.month}-${date.day}";

DateTime parseDate(String dateStr) => DateTime.parse(dateStr);

DateTime addDays(DateTime date, int days) => date.add(Duration(days: days));

DateTime subtractDays(DateTime date, int days) => date.subtract(Duration(days: days));

int getDateDifferenceInDays(DateTime start, DateTime end) =>
    end.difference(start).inDays;
