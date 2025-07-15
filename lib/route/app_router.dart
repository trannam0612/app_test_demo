import 'dart:developer';

import 'package:app_test_demo/index.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class RouteNames {
  static const String splash = '/';
  static const String homeRoute = '/homeRoute';
  static const String languageSettingRoute = '/languageSettingRoute';
  static const String workOrderDetailRoute = '/workOrderDetailRoute';
}

final Map<String, Widget Function(BuildContext context, Object? arguments)>
routes = {
  RouteNames.homeRoute: (context, args) => MultiBlocProvider(
    providers: [
      BlocProvider<HomeCubit>(create: (context) => HomeCubit()),

      BlocProvider<ListWorkCubit>(create: (context) => ListWorkCubit()),
    ],
    child: HomeScreen(),
  ),
  RouteNames.languageSettingRoute: (context, args) =>
      BlocProvider<LanguageSettingCubit>(
        create: (context) => LanguageSettingCubit(),
        child: const LanguageScreen(),
      ),
  RouteNames.workOrderDetailRoute: (context, args) {
    final workItemModel = args as WorkItemModel?;
    return BlocProvider<WorkOrderDetailCubit>(
      create: (context) => WorkOrderDetailCubit(),
      child: WorkOrderDetailScreen(workItemModel: workItemModel),
    );
  },
};

class AppRoute {
  static Route<dynamic> getRoute(RouteSettings settings) {
    log('ScreenName: ${settings.name}');
    final builder = routes[settings.name];
    Widget widget;
    try {
      widget = builder!(navigatorKey.currentContext!, settings.arguments);
    } catch (e) {
      log(e.toString());
      widget = Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('Không tìm thấy trang')),
        body: const Center(child: Text('Page not found')),
      );
    }
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext ctx) => widget,
      settings: settings,
    );
  }
}
