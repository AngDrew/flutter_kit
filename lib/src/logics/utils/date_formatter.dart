import 'package:intl/intl.dart';

/// format: choose your own
///
/// EEE = Sun
///
/// EEEEEE = Sunday
///
/// d = 0 / 00 day
///
/// dd = 00 day
///
/// M = 0 / 00 month
///
/// MM = 00 month
///
/// y = 0000 year
///
/// yy = 00 year
///
/// yyyy = 0000 year
///
/// H = 0 / 00 hour
///
/// HH = 00 hour
///
/// m = 0 / 00 minute
///
/// mm = 00 minute
///
/// s = 0 / 00 minute
///
/// ss = 00 minute
///
/// you can also add / , - : . symbol
String customDateFormatter(DateTime date, String format, [String? locale]) {
  return DateFormat(format, locale).format(date);
}

/// format: `EEEEEE, d-M-y HH:mm:ss`
String completeDateFormatter(DateTime date) {
  return DateFormat('EEEEEE, d-M-y HH:mm:ss').format(date);
}

/// format: `HH:mm:ss`
String timeFormatter(DateTime date) {
  return DateFormat('HH:mm:ss').format(date);
}

/// format: `HH:mm`
String shortTimeFormatter(DateTime date) {
  return DateFormat('HH.mm').format(date);
}

/// format: `d-M-y`
String dateFormatter(DateTime date) {
  return DateFormat('d-M-y').format(date);
}

/// format: `d MMM yyyy`
String dateFormatterNamed(DateTime date) {
  return DateFormat('d MMM yyyy').format(date);
}

/// format: `d-M-y HH:mm:ss`
String dateTimeFormatter(DateTime date) {
  return DateFormat('d-M-y HH:mm:ss').format(date);
}

/// format: `EEE, d MMM y`
String dateFormatterWithDay(DateTime date) {
  return DateFormat('EEE, d MMM y').format(date);
}

// reversed

/// format: `y-MM-dd`
String dateFormatterReverse(DateTime date) {
  return DateFormat('y-MM-dd').format(date);
}

/// format: `y-M-d HH:mm:ss`
String dateTimeFormatterReversedDate(DateTime date) {
  return DateFormat('y-M-d HH:mm:ss').format(date);
}
