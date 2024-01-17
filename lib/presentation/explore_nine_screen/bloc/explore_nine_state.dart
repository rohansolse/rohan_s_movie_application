// ignore_for_file: must_be_immutable

part of 'explore_nine_bloc.dart';

/// Represents the state of ExploreNine in the application.
class ExploreNineState extends Equatable {
  ExploreNineState({
    this.searchController,
    this.exploreNineModelObj,
  });

  TextEditingController? searchController;

  ExploreNineModel? exploreNineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        exploreNineModelObj,
      ];
  ExploreNineState copyWith({
    TextEditingController? searchController,
    ExploreNineModel? exploreNineModelObj,
  }) {
    return ExploreNineState(
      searchController: searchController ?? this.searchController,
      exploreNineModelObj: exploreNineModelObj ?? this.exploreNineModelObj,
    );
  }
}
