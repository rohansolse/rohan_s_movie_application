// ignore_for_file: must_be_immutable

part of 'explore_seven_bloc.dart';

/// Represents the state of ExploreSeven in the application.
class ExploreSevenState extends Equatable {
  ExploreSevenState({this.exploreSevenModelObj});

  ExploreSevenModel? exploreSevenModelObj;

  @override
  List<Object?> get props => [
        exploreSevenModelObj,
      ];
  ExploreSevenState copyWith({ExploreSevenModel? exploreSevenModelObj}) {
    return ExploreSevenState(
      exploreSevenModelObj: exploreSevenModelObj ?? this.exploreSevenModelObj,
    );
  }
}
