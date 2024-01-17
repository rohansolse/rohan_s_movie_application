// ignore_for_file: must_be_immutable

part of 'see_more_seven_bloc.dart';

/// Represents the state of SeeMoreSeven in the application.
class SeeMoreSevenState extends Equatable {
  SeeMoreSevenState({
    this.searchController,
    this.seeMoreSevenModelObj,
  });

  TextEditingController? searchController;

  SeeMoreSevenModel? seeMoreSevenModelObj;

  @override
  List<Object?> get props => [
        searchController,
        seeMoreSevenModelObj,
      ];
  SeeMoreSevenState copyWith({
    TextEditingController? searchController,
    SeeMoreSevenModel? seeMoreSevenModelObj,
  }) {
    return SeeMoreSevenState(
      searchController: searchController ?? this.searchController,
      seeMoreSevenModelObj: seeMoreSevenModelObj ?? this.seeMoreSevenModelObj,
    );
  }
}
