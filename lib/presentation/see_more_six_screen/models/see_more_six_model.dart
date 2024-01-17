// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'seemoresix_item_model.dart';

/// This class defines the variables used in the [see_more_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreSixModel extends Equatable {
  SeeMoreSixModel({this.seemoresixItemList = const []}) {}

  List<SeemoresixItemModel> seemoresixItemList;

  SeeMoreSixModel copyWith({List<SeemoresixItemModel>? seemoresixItemList}) {
    return SeeMoreSixModel(
      seemoresixItemList: seemoresixItemList ?? this.seemoresixItemList,
    );
  }

  @override
  List<Object?> get props => [seemoresixItemList];
}
