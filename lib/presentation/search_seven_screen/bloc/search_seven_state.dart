// ignore_for_file: must_be_immutable

part of 'search_seven_bloc.dart';

/// Represents the state of SearchSeven in the application.
class SearchSevenState extends Equatable {
  SearchSevenState({
    this.searchController,
    this.searchSevenModelObj,
  });

  TextEditingController? searchController;

  SearchSevenModel? searchSevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchSevenModelObj,
      ];
  SearchSevenState copyWith({
    TextEditingController? searchController,
    SearchSevenModel? searchSevenModelObj,
  }) {
    return SearchSevenState(
      searchController: searchController ?? this.searchController,
      searchSevenModelObj: searchSevenModelObj ?? this.searchSevenModelObj,
    );
  }
}
