// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'exploregrid_item_model.dart';

/// This class defines the variables used in the [explore_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSixModel extends Equatable {
  ExploreSixModel({this.exploregridItemList = const []}) {}

  List<ExploregridItemModel> exploregridItemList;

  ExploreSixModel copyWith({List<ExploregridItemModel>? exploregridItemList}) {
    return ExploreSixModel(
      exploregridItemList: exploregridItemList ?? this.exploregridItemList,
    );
  }

  @override
  List<Object?> get props => [exploregridItemList];
}
