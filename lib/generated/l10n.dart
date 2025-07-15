// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Đơn hàng`
  String get order {
    return Intl.message('Đơn hàng', name: 'order', desc: '', args: []);
  }

  /// `Hô sơ cá nhân`
  String get profile {
    return Intl.message('Hô sơ cá nhân', name: 'profile', desc: '', args: []);
  }

  /// `Ngôn ngữ`
  String get language {
    return Intl.message('Ngôn ngữ', name: 'language', desc: '', args: []);
  }

  /// `Tiếng anh (US)`
  String get enLanguage {
    return Intl.message(
      'Tiếng anh (US)',
      name: 'enLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Đăng xuất`
  String get logOut {
    return Intl.message('Đăng xuất', name: 'logOut', desc: '', args: []);
  }

  /// `Tiếng viêt (VI)`
  String get viLanguage {
    return Intl.message(
      'Tiếng viêt (VI)',
      name: 'viLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Công việc được giao`
  String get workOrders {
    return Intl.message(
      'Công việc được giao',
      name: 'workOrders',
      desc: '',
      args: [],
    );
  }

  /// `Danh sách công việc trống`
  String get emptyData {
    return Intl.message(
      'Danh sách công việc trống',
      name: 'emptyData',
      desc: '',
      args: [],
    );
  }

  /// `Lỗi tải dữ liệu`
  String get loadingDataError {
    return Intl.message(
      'Lỗi tải dữ liệu',
      name: 'loadingDataError',
      desc: '',
      args: [],
    );
  }

  /// `Chi tiết công việc`
  String get workOrderDetail {
    return Intl.message(
      'Chi tiết công việc',
      name: 'workOrderDetail',
      desc: '',
      args: [],
    );
  }

  /// `Đang chờ`
  String get pending {
    return Intl.message('Đang chờ', name: 'pending', desc: '', args: []);
  }

  /// `Đang xử lý`
  String get process {
    return Intl.message('Đang xử lý', name: 'process', desc: '', args: []);
  }

  /// `Đã hoàn thành`
  String get complete {
    return Intl.message('Đã hoàn thành', name: 'complete', desc: '', args: []);
  }

  /// `Đã hủy`
  String get canceled {
    return Intl.message('Đã hủy', name: 'canceled', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'vi'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
