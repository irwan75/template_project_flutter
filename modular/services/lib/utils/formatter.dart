import 'package:intl/intl.dart';

class Formatter {
  /// format 'yyyy-MM-dd hh:mm.ss'
  static const String formatterDateTime1 = 'yyyy-MM-dd hh:mm:ss';

  /// format 'dd MMMM yyyy'
  static const String formatterDateTime2 = 'dd MMMM yyyy';

  /// format 'yyyy-MM-dd'
  static const String formatterDateTime3 = 'yyyy-MM-dd';

  /// format yyyy-MM-dd'T'HH:mm:ss'Z'
  static const String formatterDateTime4 = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

  /// format 'yyyy-MM-dd hh:mm.ss'
  static const String formatterDateTime5 = 'yyyy-MM-dd hh:mm:ss.SSS';

  /// format 'EE, dd MMMM yyyy'
  static const String formatterDateTime6 = 'EEEE, dd MMMM yyyy';

  /// format 'hh.mm'
  static const String formatterTime = 'hh.mm';

  Formatter._privateConstructor();

  static final Formatter _instance = Formatter._privateConstructor();

  static Formatter get getInstance => _instance;

  String formatterPrefixPhoneNumber(String phoneNumber) {
    if (phoneNumber.substring(0, 1) == '0')
      return phoneNumber.replaceRange(0, 1, '62');
    return phoneNumber;
  }

  String convertDateTimeFormatter(
      {required DateTime dateTime, required String toFormat}) {
    return DateFormat(toFormat).format(dateTime);
  }

  String convertStringDateTimeFormatter(
      {required String source,
      required String fromFormat,
      required String toFormat}) {
    DateTime dateHandle = DateFormat(fromFormat).parse(source);
    return DateFormat(toFormat).format(dateHandle);
  }

  String convertStringDateTimeZoneFormatter(
      {required String source,
      required String fromFormat,
      required String toFormat}) {
    DateTime dateHandle = DateFormat(fromFormat)
        .parse(source.replaceAll('T', ' ').replaceAll('Z', ''));
    return DateFormat(toFormat).format(dateHandle);
  }

  DateTime convertStringtoDate({required String date}) {
    return DateFormat('dd-MM-yyyy').parse(date);
  }
}
