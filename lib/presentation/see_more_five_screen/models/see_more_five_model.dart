// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'seemorefive_item_model.dart';

/// This class defines the variables used in the [see_more_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SeeMoreFiveModel extends Equatable {
  SeeMoreFiveModel({this.seemorefiveItemList = const []}) {}

  List<SeemorefiveItemModel> seemorefiveItemList;

  SeeMoreFiveModel copyWith({List<SeemorefiveItemModel>? seemorefiveItemList}) {
    return SeeMoreFiveModel(
      seemorefiveItemList: seemorefiveItemList ?? this.seemorefiveItemList,
    );
  }

  @override
  List<Object?> get props => [seemorefiveItemList];
}
