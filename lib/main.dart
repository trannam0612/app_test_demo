import 'package:flutter/material.dart';
import 'package:app_test_demo/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        buildWhen: (previous, current) =>
            previous.languageEnum != current.languageEnum,
        builder: (context, state) {
          final LanguageEnum? languageEnum = state.languageEnum;
          return MaterialApp(
            title: 'Flutter Demo',
            navigatorKey: navigatorKey,
            initialRoute: RouteNames.homeRoute,
            onGenerateRoute: AppRoute.getRoute,
            // onUnknownRoute: AppRouter.onUnknownRoute,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            localizationsDelegates: const <LocalizationsDelegate>[
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            locale: languageEnum?.locale,
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
