// ignore_for_file: must_be_immutable

part of 'detail_page_twelve_bloc.dart';

/// Represents the state of DetailPageTwelve in the application.
class DetailPageTwelveState extends Equatable {
  DetailPageTwelveState({this.detailPageTwelveModelObj});

  DetailPageTwelveModel? detailPageTwelveModelObj;

  @override
  List<Object?> get props => [
        detailPageTwelveModelObj,
      ];
  DetailPageTwelveState copyWith(
      {DetailPageTwelveModel? detailPageTwelveModelObj}) {
    return DetailPageTwelveState(
      detailPageTwelveModelObj:
          detailPageTwelveModelObj ?? this.detailPageTwelveModelObj,
    );
  }
}
