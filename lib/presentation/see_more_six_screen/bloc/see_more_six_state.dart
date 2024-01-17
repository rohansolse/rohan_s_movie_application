// ignore_for_file: must_be_immutable

part of 'see_more_six_bloc.dart';

/// Represents the state of SeeMoreSix in the application.
class SeeMoreSixState extends Equatable {
  SeeMoreSixState({this.seeMoreSixModelObj});

  SeeMoreSixModel? seeMoreSixModelObj;

  @override
  List<Object?> get props => [
        seeMoreSixModelObj,
      ];
  SeeMoreSixState copyWith({SeeMoreSixModel? seeMoreSixModelObj}) {
    return SeeMoreSixState(
      seeMoreSixModelObj: seeMoreSixModelObj ?? this.seeMoreSixModelObj,
    );
  }
}
