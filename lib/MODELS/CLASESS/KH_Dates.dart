import 'package:intl/intl.dart';

// ignore: camel_case_types
class KH_Dates {
  static String getUserFormattedStringDate({required DateTime theDate}) {
    // final stringDate = DateFormat.yMEd().format(theDate);
    final stringDate = DateFormat("yyyy-MM-dd", "en").format(theDate);
    // final stringDate2 = DateFormat.EEEE('en') .format(theDate);
    // final stringDate3 = stringDate2 + " " + stringDate ;
    return stringDate;
    // DateFormat('dd/MM/yyyy', "en")  for data base
    // DateFormat.EEEE() => saturday
    // DateFormat.yMEd() => saturday 22/6/2020
    // DateFormat.yMMMMEEEEd() => saturday 12 jone 2020
    // DateFormat.yMMMMd() => 12 jone 2020
  }

  static String getNamedDaysFormattedStringDate({required DateTime theDate}) {
    final stringDate = DateFormat.yMEd().format(theDate);
    // final stringDate = DateFormat("yyyy-MM-dd", "en").format(theDate);
    // final stringDate2 = DateFormat.EEEE('en') .format(theDate);
    // final stringDate3 = stringDate2 + " " + stringDate ;
    return stringDate;
    // DateFormat('dd/MM/yyyy', "en")  for data base
    // DateFormat.EEEE() => saturday
    // DateFormat.yMEd() => saturday 22/6/2020
    // DateFormat.yMMMMEEEEd() => saturday 12 jone 2020
    // DateFormat.yMMMMd() => 12 jone 2020
  }

  static String getDataBaseFormattedStringDate({required DateTime theDate}) {
    final stringDate = DateFormat("yyyy-MM-dd", "en").format(theDate);
    return stringDate;
    // DateFormat('dd/MM/yyyy', "en")  for data base
    // DateFormat("yyyy-MM-dd", "en")
  }

  static int getNomberOfDaysBetween(
      {required DateTime from, required DateTime to}) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }
}
