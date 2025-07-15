import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'work_order_detail_state.dart';

class WorkOrderDetailCubit extends Cubit<WorkOrderDetailState> {
  WorkOrderDetailCubit() : super(WorkOrderDetailInitial());
}
