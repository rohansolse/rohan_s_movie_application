// ignore_for_file: must_be_immutable

part of 'detail_page_eleven_bloc.dart';

/// Represents the state of DetailPageEleven in the application.
class DetailPageElevenState extends Equatable {
  DetailPageElevenState({this.detailPageElevenModelObj});

  DetailPageElevenModel? detailPageElevenModelObj;

  @override
  List<Object?> get props => [
        detailPageElevenModelObj,
      ];
  DetailPageElevenState copyWith(
      {DetailPageElevenModel? detailPageElevenModelObj}) {
    return DetailPageElevenState(
      detailPageElevenModelObj:
          detailPageElevenModelObj ?? this.detailPageElevenModelObj,
    );
  }
}
