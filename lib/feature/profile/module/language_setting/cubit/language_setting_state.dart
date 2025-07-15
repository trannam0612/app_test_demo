part of 'language_setting_cubit.dart';

class LanguageSettingState extends Equatable {
  const LanguageSettingState({this.languageEnum});

  final LanguageEnum? languageEnum;

  LanguageSettingState copyWith({LanguageEnum? languageEnum}) {
    return LanguageSettingState(
      languageEnum: languageEnum ?? this.languageEnum,
    );
  }

  @override
  List<Object?> get props => [languageEnum];
}
