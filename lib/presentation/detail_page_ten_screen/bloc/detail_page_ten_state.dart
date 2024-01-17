// ignore_for_file: must_be_immutable

part of 'detail_page_ten_bloc.dart';

/// Represents the state of DetailPageTen in the application.
class DetailPageTenState extends Equatable {
  DetailPageTenState({this.detailPageTenModelObj});

  DetailPageTenModel? detailPageTenModelObj;

  @override
  List<Object?> get props => [
        detailPageTenModelObj,
      ];
  DetailPageTenState copyWith({DetailPageTenModel? detailPageTenModelObj}) {
    return DetailPageTenState(
      detailPageTenModelObj:
          detailPageTenModelObj ?? this.detailPageTenModelObj,
    );
  }
}
