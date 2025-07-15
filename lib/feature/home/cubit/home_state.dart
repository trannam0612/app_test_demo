part of 'home_cubit.dart';

class HomeState extends Equatable {
  final int? selectedIndex;

  const HomeState({this.selectedIndex});

  HomeState copyWith({int? selectedIndex}) {
    return HomeState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }

  @override
  List<Object?> get props => [selectedIndex];
}
