import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF014BB7);
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteBackground = Color(0xFFFAFAFA);
  static const Color e0Gray = Color(0xFFE0E0E0);
  static const Color doveGray = Color(0xFF878787);
  static const Color backgroundColor = Color(0xFFF9F9F9);
  static const Color yellow = Color(0xFFFFCB4F);
  static const Color bgBox = Color(0x1A014BB7);
  static const Color bgGray80 = Color(0xCCEDEDED);
  static const Color error = Color(0xFFFF5252);
  static const Color borderColor = Color(0xFFEDEDED);
  static const Color borderFocusColor = Color(0xFF014BB7);
  static const Color red = Color(0xFFDB1010);
  static const Color redFF2D55 = Color(0xFFFF2D55);
  static const Color neutral = Color(0xFF101010);
  static const Color bgFillInfo = Color(0xFF91D0FF);
  static const Color bgIncomplete = Color(0xFFE3E3E3);
  static const Color gray737373 = Color(0xFF737373);
  static const Color grayF5F5F5 = Color(0xFFF5F5F5);
  static const Color grayBDBDBD = Color(0xFFBDBDBD);
  static const Color border = Color(0xFFE9E9E9);
  static const Color borderDivider = Color(0xFFE5E7EB);
  static const Color yellowFAC860 = Color(0xFFFAC860);
  static const Color yellowFF9500 = Color(0xFFFF9500);
  static const Color blue006CAB = Color(0xFF006CAB);
  static const Color blueF0F9FF = Color(0xFFF0F9FF);
  static const Color blue7BD2FE = Color(0xFF7BD2FE);

  ///Toast color
  static const Color kToastNormal = Color(0xCCEDEDED);
  static const Color kToastSuccess = Color(0xFF00D18A);
  static const Color kToastError = Color(0xFFEB5454);
  static const Color kToastWarning = Color(0xFFFFB038);

  ///Text
  static const Color textPrimary = Color(0xFF111827);
  static const Color textInverse = Color(0xFFFFFFFF);
  static const Color textError = Color(0xFFFF5252);
  static const Color textGray = Color(0xFF9CA3AF);
  static const Color textGray6 = Color(0xFF6B7280);
  static const Color dividerColor = Color(0xFFEDEDED);
  static const Color textBlue = Color(0xFF014BB7);
  static const Color textSuccess = Color(0xff34C759);
  static const Color textPrimaryNew = Color(0xFF010101);

  static Color blue = const Color(0xFF014BB7);
  static const Color blue10 = Color(0x1A014BB7);

  ///Button
  static const Color buttonBgColor = Color(0xFF014BB7);
  static const Color buttonBgDisableColor = Color(0x7F014BB7);

  // Input
  static const Color neutral_40 = Color(0xFFD6D6D6);
}

class AppShadows {
  static List<BoxShadow> shadowDefault = [
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.04),
      blurRadius: 60,
      offset: Offset(6, 6),
    ),
  ];
}

TextStyle textStyle = const TextStyle(
  fontSize: 15,
  fontWeight: FontWeight.w500,
  color: AppColors.black,
);
