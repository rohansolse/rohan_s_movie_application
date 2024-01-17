// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies4_item_model.dart';

/// This class defines the variables used in the [detail_page_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageEightModel extends Equatable {
  DetailPageEightModel({this.movies4ItemList = const []}) {}

  List<Movies4ItemModel> movies4ItemList;

  DetailPageEightModel copyWith({List<Movies4ItemModel>? movies4ItemList}) {
    return DetailPageEightModel(
      movies4ItemList: movies4ItemList ?? this.movies4ItemList,
    );
  }

  @override
  List<Object?> get props => [movies4ItemList];
}
