// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specials1_item_model.dart';
import 'exploregrid1_item_model.dart';

/// This class defines the variables used in the [explore_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreEightModel extends Equatable {
  ExploreEightModel({
    this.specials1ItemList = const [],
    this.exploregrid1ItemList = const [],
  }) {}

  List<Specials1ItemModel> specials1ItemList;

  List<Exploregrid1ItemModel> exploregrid1ItemList;

  ExploreEightModel copyWith({
    List<Specials1ItemModel>? specials1ItemList,
    List<Exploregrid1ItemModel>? exploregrid1ItemList,
  }) {
    return ExploreEightModel(
      specials1ItemList: specials1ItemList ?? this.specials1ItemList,
      exploregrid1ItemList: exploregrid1ItemList ?? this.exploregrid1ItemList,
    );
  }

  @override
  List<Object?> get props => [specials1ItemList, exploregrid1ItemList];
}
