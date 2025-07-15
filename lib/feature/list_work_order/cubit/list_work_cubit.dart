import 'package:app_test_demo/index.dart';

part 'list_work_state.dart';

class ListWorkCubit extends Cubit<ListWorkState> {
  ListWorkCubit() : super(ListWorkState());

  void initialize() async {
    emit(state.copyWith(loadState: LoadState.loading));
    try {
      await Future.delayed(Duration(seconds: 2));
      final List<WorkItemModel> workOrders = WorkItemModel().mockList();
      emit(
        state.copyWith(listWorkOrder: workOrders, loadState: LoadState.success),
      );
    } catch (e) {
      emit(state.copyWith(loadState: LoadState.failure, message: e.toString()));
    }
  }
}
