// ignore_for_file: must_be_immutable

part of 'explore_six_bloc.dart';

/// Represents the state of ExploreSix in the application.
class ExploreSixState extends Equatable {
  ExploreSixState({
    this.searchController,
    this.exploreSixModelObj,
  });

  TextEditingController? searchController;

  ExploreSixModel? exploreSixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        exploreSixModelObj,
      ];
  ExploreSixState copyWith({
    TextEditingController? searchController,
    ExploreSixModel? exploreSixModelObj,
  }) {
    return ExploreSixState(
      searchController: searchController ?? this.searchController,
      exploreSixModelObj: exploreSixModelObj ?? this.exploreSixModelObj,
    );
  }
}
