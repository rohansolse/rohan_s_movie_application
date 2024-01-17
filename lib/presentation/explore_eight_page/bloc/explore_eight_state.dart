// ignore_for_file: must_be_immutable

part of 'explore_eight_bloc.dart';

/// Represents the state of ExploreEight in the application.
class ExploreEightState extends Equatable {
  ExploreEightState({this.exploreEightModelObj});

  ExploreEightModel? exploreEightModelObj;

  @override
  List<Object?> get props => [
        exploreEightModelObj,
      ];
  ExploreEightState copyWith({ExploreEightModel? exploreEightModelObj}) {
    return ExploreEightState(
      exploreEightModelObj: exploreEightModelObj ?? this.exploreEightModelObj,
    );
  }
}
