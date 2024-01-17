// ignore_for_file: must_be_immutable

part of 'see_more_five_bloc.dart';

/// Represents the state of SeeMoreFive in the application.
class SeeMoreFiveState extends Equatable {
  SeeMoreFiveState({this.seeMoreFiveModelObj});

  SeeMoreFiveModel? seeMoreFiveModelObj;

  @override
  List<Object?> get props => [
        seeMoreFiveModelObj,
      ];
  SeeMoreFiveState copyWith({SeeMoreFiveModel? seeMoreFiveModelObj}) {
    return SeeMoreFiveState(
      seeMoreFiveModelObj: seeMoreFiveModelObj ?? this.seeMoreFiveModelObj,
    );
  }
}
