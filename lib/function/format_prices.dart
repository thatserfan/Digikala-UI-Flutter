import 'package:intl/intl.dart';

String formatPrices(price) {
  final formater = NumberFormat("#,##0");
  return formater.format(price);
}
