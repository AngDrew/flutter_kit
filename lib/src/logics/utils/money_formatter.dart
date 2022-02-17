import 'package:intl/intl.dart';

/// Rp x.xxx
String idrMoneyFormat(num val) {
  return NumberFormat.currency(
    locale: 'idID',
    decimalDigits: 0,
    symbol: 'Rp ',
  ).format(val);
}

/// x,xxx
String simpleMoneyFormat(num val) {
  final NumberFormat formatter = NumberFormat('#,###');

  return formatter.format(val);
}
