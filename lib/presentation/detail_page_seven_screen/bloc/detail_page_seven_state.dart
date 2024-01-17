// ignore_for_file: must_be_immutable

part of 'detail_page_seven_bloc.dart';

/// Represents the state of DetailPageSeven in the application.
class DetailPageSevenState extends Equatable {
  DetailPageSevenState({this.detailPageSevenModelObj});

  DetailPageSevenModel? detailPageSevenModelObj;

  @override
  List<Object?> get props => [
        detailPageSevenModelObj,
      ];
  DetailPageSevenState copyWith(
      {DetailPageSevenModel? detailPageSevenModelObj}) {
    return DetailPageSevenState(
      detailPageSevenModelObj:
          detailPageSevenModelObj ?? this.detailPageSevenModelObj,
    );
  }
}
