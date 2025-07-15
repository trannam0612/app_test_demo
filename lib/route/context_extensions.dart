import 'package:app_test_demo/index.dart';

extension ContextX on BuildContext {
  pop<T extends Object>() {
    return Navigator.of(this).pop<T>();
  }

  popUntil(String routeName) {
    return Navigator.of(this).popUntil(ModalRoute.withName(routeName));
  }

  void toLanguageSettingRoute() {
    Navigator.pushNamed(this, RouteNames.languageSettingRoute);
  }

  void toWorkOrderDetailRoute({WorkItemModel? workItemModel}) {
    Navigator.pushNamed(
      this,
      RouteNames.workOrderDetailRoute,
      arguments: workItemModel,
    );
  }
}
