// ignore_for_file: must_be_immutable

part of 'detail_page_nine_bloc.dart';

/// Represents the state of DetailPageNine in the application.
class DetailPageNineState extends Equatable {
  DetailPageNineState({this.detailPageNineModelObj});

  DetailPageNineModel? detailPageNineModelObj;

  @override
  List<Object?> get props => [
        detailPageNineModelObj,
      ];
  DetailPageNineState copyWith({DetailPageNineModel? detailPageNineModelObj}) {
    return DetailPageNineState(
      detailPageNineModelObj:
          detailPageNineModelObj ?? this.detailPageNineModelObj,
    );
  }
}
