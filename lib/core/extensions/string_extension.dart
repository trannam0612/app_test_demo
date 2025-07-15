import 'package:flutter/material.dart';

extension StringNullExtension on String? {
  String removeWhitespace() {
    return this?.replaceAll(' ', '') ?? '';
  }

  bool isPhoneNumber() {
    if (this == null) return false;
    final RegExp phoneNumber =
        RegExp(r'^[2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9]{4}$');
    return phoneNumber.hasMatch(this!);
  }

  String? clearSpace() {
    return this?.replaceAll('\n', ' ');
  }

  bool isVerifyCode() {
    if (this == null) return false;
    final RegExp codeReg = RegExp(r'^[0-9]{6}$');
    return codeReg.hasMatch(this!);
  }

  bool isEmailAddress() {
    if (this == null) return false;
    final RegExp email =
        RegExp(r'^(([\w-\.])*[\w]+){4,}@([\w-]+\.)+[\w-]{2,4}$');
    return email.hasMatch(this!);
  }

  bool isEmptyOrNull() {
    if (this == null) return true;
    return this!.isEmpty;
  }

  bool isNotEmptyOrNull() {
    if (this != null) {
      return this!.isNotEmpty;
    }
    return false;
  }

  bool get isPhone {
    final regex = RegExp(r'^(0[3|5|7|8|9])+([0-9]{8})$');
    return regex.hasMatch(this ?? '');
  }

//
//   String? validateName() {
//     if (this == null) return S().error_required_field;
//     if (this!.isEmpty) return S().error_required_field;
//     final RegExp nameReg = RegExp(r'^([ ]{0,}[A-Za-z]{1,}[ ]{0,})+$');
// // for (String c in this!.split(kEmptyString)) {
// // logi(message: "'${this!.toString().formatName()}'",tag: "validateName");
//     if (!nameReg.hasMatch(this!)) {
//       return S().error_invalid_name;
//     }
// // }
//     return null;
//   }

  // String? validateEmpty() {
  //   if (this != null) {
  //     if (this!.isNotEmpty) {
  //       return null;
  //     }
  //   }
  //   return S().error_required_field;
  // }

  String toReadableAge() {
    if (this == null) return '';
    final int moIndex = this!.indexOf('mo');
    if (moIndex != -1) {
      return '${this!.substring(0, moIndex)} mo';
    }
    return this!;
  }

  String toEncodedEmail() {
    if (isEmptyOrNull()) return '';
    final String emailContent = this!.split('@').first;
    final String domain = this!.split('@')[1];
    int startIndex = 0;
    int endIndex = emailContent.length;
    if (emailContent.length <= 8) {
      startIndex = 1;
    } else {
      startIndex = 2;
      endIndex -= 2;
    }
    String subEncodeContent = '';
    for (int i = startIndex; i < endIndex; i++) {
      subEncodeContent += '*';
    }
    final String encodedEmail = '${emailContent.substring(0, startIndex)}'
        '$subEncodeContent${emailContent.substring(endIndex)}@$domain';
    return encodedEmail;
  }
}

extension StringExtension on String {
  String hidePhone() {
    return replaceRange(length - 5, length, '*' * 5);
  }

  int isCountLine({
    required double fontSize,
    required double lineHeight,
    required double containerWidth,
  }) {
    final TextPainter painter = TextPainter(
      text: TextSpan(
        text: this,
        style: TextStyle(fontSize: fontSize, height: lineHeight),
      ),
      maxLines: 999, // Số lớn để đảm bảo tính toán đúng
      textDirection: TextDirection.ltr,
    );

    painter.layout(maxWidth: containerWidth);
    return painter.computeLineMetrics().length;
  }

  String formatPhoneNumber() {
    String s = toString();
    if (s.isNotEmpty) {
      s = s.replaceAll(RegExp(r'-{2,}'), '-');
      final List<String> list = s.split('');
      if (list.last == '-') {
        list.removeLast();
      } else {
        if (list.length == 4) {
          list.insert(3, '-');
        } else if (list.length == 8) {
          list.insert(7, '-');
        } else if (list.length > 12) {
          list.removeLast();
        }
      }
      if (list.length > 3 && list[3] != '-') {
        list.insert(3, '-');
      }
      if (list.length > 7 && list[7] != '-') {
        list.insert(7, '-');
      }
      return list.join();
    }
    return s;
  }

  String formatName() {
    return replaceAll(RegExp(r'[ ]{2,}'), ' ').trim();
  }

  String normalizePhoneNumber() {
    final String phoneNumber = toString();
    return phoneNumber.replaceAll('-', '');
  }

  bool isEvenNumber() {
    if (int.tryParse(this) == null) return false;
    return int.parse(this) % 2 == 0;
  }

  bool isOddNumber() {
    if (int.tryParse(this) == null) return false;
    return int.parse(this) % 2 != 0;
  }
}

extension StringTimeExtension on String {
  bool has30Days() {
    return <String>[
      '04',
      '05',
      '06',
      '09',
      '11',
    ].contains(this);
  }

  bool has31Days() {
    return <String>[
      '01',
      '03',
      '05',
      '07',
      '08',
      '10',
      '12',
    ].contains(this);
  }

  bool isLeapYear() {
    if (int.tryParse(this) == null) return false;
    final int year = int.parse(this);
    return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
  }

  String? get getMonthString {
    switch (this) {
      case '1':
        return 'January';
      case '2':
        return 'February';
      case '3':
        return 'March';
      case '4':
        return 'April';
      case '5':
        return 'May';
      case '6':
        return 'June';
      case '7':
        return 'July';
      case '8':
        return 'August';
      case '9':
        return 'September';
      case '10':
        return 'October';
      case '11':
        return 'November';
      case '12':
        return 'December';
    }
    return null;
  }
}

extension RemoveDiacritics on String {
  String removeDiacritics() {
    const vietnamese = 'aAeEoOuUiIdDyY'
        'áàạảãâấầậẩẫăắằặẳẵ'
        'éèẹẻẽêếềệểễ'
        'óòọỏõôốồộổỗơớờợởỡ'
        'úùụủũưứừựửữ'
        'íìịỉĩ'
        'đ'
        'ýỳỵỷỹ';
    const nonVietnamese = 'aAeEoOuUiIdDyY'
        'aaaaaaaaaaaaaaaa'
        'eeeeeeeeeee'
        'ooooooooooooooooo'
        'uuuuuuuuuuu'
        'iiiii'
        'd'
        'yyyyy';

    var result = this;
    for (int i = 0; i < vietnamese.length - 1; i++) {
      result = result.replaceAll(
        vietnamese[i].toUpperCase(),
        nonVietnamese[i].toUpperCase(),
      );
    }
    return result;
  }
}

extension DateTimeString on String {
  DateTime? toDateTime() {
    try {
      return DateTime.parse(this);
    } catch (e) {
      return null;
    }
  }

  DateTime toTimeStringToDateTime() {

    ///Use for example: 10:00
    final now = DateTime.now();
    final timeParts = split(':');
    return DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(timeParts[0]),
      int.parse(timeParts[1]),
    );
  }
}
