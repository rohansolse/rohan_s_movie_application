// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'chipview_item_model.dart';
import '../../../core/app_export.dart';
import 'movies1_item_model.dart';

/// This class defines the variables used in the [detail_page_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageNineModel extends Equatable {
  DetailPageNineModel({
    this.chipviewItemList = const [],
    this.movies1ItemList = const [],
  }) {}

  List<ChipviewItemModel> chipviewItemList;

  List<Movies1ItemModel> movies1ItemList;

  DetailPageNineModel copyWith({
    List<ChipviewItemModel>? chipviewItemList,
    List<Movies1ItemModel>? movies1ItemList,
  }) {
    return DetailPageNineModel(
      chipviewItemList: chipviewItemList ?? this.chipviewItemList,
      movies1ItemList: movies1ItemList ?? this.movies1ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewItemList, movies1ItemList];
}
