import 'package:app_test_demo/core/constant/enum.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_setting_state.dart';

class LanguageSettingCubit extends Cubit<LanguageSettingState> {
  LanguageSettingCubit()
    : super(LanguageSettingState(languageEnum: LanguageEnum.vi));

  void changeLanguage(LanguageEnum languageEnum) {
    if (state.languageEnum == languageEnum) return;
    emit(state.copyWith(languageEnum: languageEnum));
  }
}
