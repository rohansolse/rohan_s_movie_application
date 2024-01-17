// ignore_for_file: must_be_immutable

part of 'detail_page_eight_bloc.dart';

/// Represents the state of DetailPageEight in the application.
class DetailPageEightState extends Equatable {
  DetailPageEightState({this.detailPageEightModelObj});

  DetailPageEightModel? detailPageEightModelObj;

  @override
  List<Object?> get props => [
        detailPageEightModelObj,
      ];
  DetailPageEightState copyWith(
      {DetailPageEightModel? detailPageEightModelObj}) {
    return DetailPageEightState(
      detailPageEightModelObj:
          detailPageEightModelObj ?? this.detailPageEightModelObj,
    );
  }
}
