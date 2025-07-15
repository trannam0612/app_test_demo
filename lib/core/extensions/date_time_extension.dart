import '../constant/string_constants.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dateTimeFormat {
    final date = DateFormat(kDateTimeFormat);
    return date.format(this);
  }
}
