// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'vi';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "canceled": MessageLookupByLibrary.simpleMessage("Đã hủy"),
    "complete": MessageLookupByLibrary.simpleMessage("Đã hoàn thành"),
    "emptyData": MessageLookupByLibrary.simpleMessage(
      "Danh sách công việc trống",
    ),
    "enLanguage": MessageLookupByLibrary.simpleMessage("Tiếng anh (US)"),
    "language": MessageLookupByLibrary.simpleMessage("Ngôn ngữ"),
    "loadingDataError": MessageLookupByLibrary.simpleMessage("Lỗi tải dữ liệu"),
    "logOut": MessageLookupByLibrary.simpleMessage("Đăng xuất"),
    "order": MessageLookupByLibrary.simpleMessage("Đơn hàng"),
    "pending": MessageLookupByLibrary.simpleMessage("Đang chờ"),
    "process": MessageLookupByLibrary.simpleMessage("Đang xử lý"),
    "profile": MessageLookupByLibrary.simpleMessage("Hô sơ cá nhân"),
    "viLanguage": MessageLookupByLibrary.simpleMessage("Tiếng viêt (VI)"),
    "workOrderDetail": MessageLookupByLibrary.simpleMessage(
      "Chi tiết công việc",
    ),
    "workOrders": MessageLookupByLibrary.simpleMessage("Công việc được giao"),
  };
}
