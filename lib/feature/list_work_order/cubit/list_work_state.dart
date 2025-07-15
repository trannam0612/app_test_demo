part of 'list_work_cubit.dart';

class ListWorkState extends Equatable {
  const ListWorkState({this.listWorkOrder, this.loadState, this.message});

  final List<WorkItemModel>? listWorkOrder;
  final LoadState? loadState;
  final String? message;

  ListWorkState copyWith({
    List<WorkItemModel>? listWorkOrder,
    LoadState? loadState,
    String? message,
  }) {
    return ListWorkState(
      listWorkOrder: listWorkOrder ?? this.listWorkOrder,
      loadState: loadState ?? this.loadState,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [listWorkOrder, loadState, message];
}
