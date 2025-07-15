part of 'app_cubit.dart';

class AppState extends Equatable {
  const AppState({this.languageEnum});

  final LanguageEnum? languageEnum;

  AppState copyWith({LanguageEnum? languageEnum}) {
    return AppState(
      languageEnum: languageEnum ?? this.languageEnum,
    );
  }

  @override
  List<Object?> get props => [languageEnum];
}
