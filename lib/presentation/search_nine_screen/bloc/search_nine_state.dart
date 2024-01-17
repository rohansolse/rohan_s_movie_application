// ignore_for_file: must_be_immutable

part of 'search_nine_bloc.dart';

/// Represents the state of SearchNine in the application.
class SearchNineState extends Equatable {
  SearchNineState({
    this.searchController,
    this.searchNineModelObj,
  });

  TextEditingController? searchController;

  SearchNineModel? searchNineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchNineModelObj,
      ];
  SearchNineState copyWith({
    TextEditingController? searchController,
    SearchNineModel? searchNineModelObj,
  }) {
    return SearchNineState(
      searchController: searchController ?? this.searchController,
      searchNineModelObj: searchNineModelObj ?? this.searchNineModelObj,
    );
  }
}
