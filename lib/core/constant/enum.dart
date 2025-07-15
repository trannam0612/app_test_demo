import 'package:app_test_demo/index.dart';

enum LoadState { initial, loading, success, failure }

enum LanguageEnum { vi, en }

extension LanguageEnumExtension on LanguageEnum {
  Locale get locale {
    switch (this) {
      case LanguageEnum.vi:
        return const Locale('vi', 'VN');
      case LanguageEnum.en:
        return const Locale('en', 'US');
    }
  }

  String get title {
    switch (this) {
      case LanguageEnum.vi:
        return S.current.viLanguage;
      case LanguageEnum.en:
        return S.current.enLanguage;
    }
  }
}

enum WorkOrderStatus {
  pending('pending'),
  inProgress('inProgress'),
  completed('completed'),
  cancelled('cancelled');

  final String value;

  const WorkOrderStatus(this.value);
}

extension WorkOrderStatusExtension on WorkOrderStatus {
  String get title {
    switch (this) {
      case WorkOrderStatus.pending:
        return S.current.pending;
      case WorkOrderStatus.inProgress:
        return S.current.process;
      case WorkOrderStatus.completed:
        return S.current.complete;
      case WorkOrderStatus.cancelled:
        return S.current.canceled;
    }
  }

  Color get color {
    switch (this) {
      case WorkOrderStatus.pending:
        return Colors.orange;
      case WorkOrderStatus.inProgress:
        return Colors.blue;
      case WorkOrderStatus.completed:
        return Colors.green;
      case WorkOrderStatus.cancelled:
        return Colors.red;
    }
  }
}
