import 'package:app_test_demo/index.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState(selectedIndex: 0));

  void onTabTapped(int index) {
    if (state.selectedIndex == index) return;
    emit(state.copyWith(selectedIndex: index));
  }
}
