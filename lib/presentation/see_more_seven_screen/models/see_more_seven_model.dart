// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'seemoreseven_item_model.dart';

/// This class defines the variables used in the [see_more_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSevenModel extends Equatable {
  SeeMoreSevenModel({this.seemoresevenItemList = const []}) {}

  List<SeemoresevenItemModel> seemoresevenItemList;

  SeeMoreSevenModel copyWith(
      {List<SeemoresevenItemModel>? seemoresevenItemList}) {
    return SeeMoreSevenModel(
      seemoresevenItemList: seemoresevenItemList ?? this.seemoresevenItemList,
    );
  }

  @override
  List<Object?> get props => [seemoresevenItemList];
}
