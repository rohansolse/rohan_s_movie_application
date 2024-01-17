// ignore_for_file: must_be_immutable

part of 'search_ten_bloc.dart';

/// Represents the state of SearchTen in the application.
class SearchTenState extends Equatable {
  SearchTenState({
    this.searchController,
    this.popularSearch = false,
    this.searchTenModelObj,
  });

  TextEditingController? searchController;

  SearchTenModel? searchTenModelObj;

  bool popularSearch;

  @override
  List<Object?> get props => [
        searchController,
        popularSearch,
        searchTenModelObj,
      ];
  SearchTenState copyWith({
    TextEditingController? searchController,
    bool? popularSearch,
    SearchTenModel? searchTenModelObj,
  }) {
    return SearchTenState(
      searchController: searchController ?? this.searchController,
      popularSearch: popularSearch ?? this.popularSearch,
      searchTenModelObj: searchTenModelObj ?? this.searchTenModelObj,
    );
  }
}
