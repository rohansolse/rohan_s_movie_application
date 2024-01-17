// ignore_for_file: must_be_immutable

part of 'search_eight_bloc.dart';

/// Represents the state of SearchEight in the application.
class SearchEightState extends Equatable {
  SearchEightState({
    this.searchController,
    this.searchEightModelObj,
  });

  TextEditingController? searchController;

  SearchEightModel? searchEightModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchEightModelObj,
      ];
  SearchEightState copyWith({
    TextEditingController? searchController,
    SearchEightModel? searchEightModelObj,
  }) {
    return SearchEightState(
      searchController: searchController ?? this.searchController,
      searchEightModelObj: searchEightModelObj ?? this.searchEightModelObj,
    );
  }
}
