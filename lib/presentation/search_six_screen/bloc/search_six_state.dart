// ignore_for_file: must_be_immutable

part of 'search_six_bloc.dart';

/// Represents the state of SearchSix in the application.
class SearchSixState extends Equatable {
  SearchSixState({
    this.searchController,
    this.searchSixModelObj,
  });

  TextEditingController? searchController;

  SearchSixModel? searchSixModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchSixModelObj,
      ];
  SearchSixState copyWith({
    TextEditingController? searchController,
    SearchSixModel? searchSixModelObj,
  }) {
    return SearchSixState(
      searchController: searchController ?? this.searchController,
      searchSixModelObj: searchSixModelObj ?? this.searchSixModelObj,
    );
  }
}
