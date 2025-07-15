import 'package:app_test_demo/core/constant/enum.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState(languageEnum: LanguageEnum.vi));

  void changeLanguage(LanguageEnum languageEnum) {
    if (state.languageEnum == languageEnum) return;
    emit(state.copyWith(languageEnum: languageEnum));
  }
}
