// ignore_for_file: must_be_immutable

part of 'explore_ten_bloc.dart';

/// Represents the state of ExploreTen in the application.
class ExploreTenState extends Equatable {
  ExploreTenState({this.exploreTenModelObj});

  ExploreTenModel? exploreTenModelObj;

  @override
  List<Object?> get props => [
        exploreTenModelObj,
      ];
  ExploreTenState copyWith({ExploreTenModel? exploreTenModelObj}) {
    return ExploreTenState(
      exploreTenModelObj: exploreTenModelObj ?? this.exploreTenModelObj,
    );
  }
}
