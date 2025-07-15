part of 'work_order_detail_cubit.dart';

sealed class WorkOrderDetailState extends Equatable {
  const WorkOrderDetailState();
}

final class WorkOrderDetailInitial extends WorkOrderDetailState {
  @override
  List<Object> get props => [];
}
