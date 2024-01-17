// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies3_item_model.dart';

/// This class defines the variables used in the [detail_page_eleven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageElevenModel extends Equatable {
  DetailPageElevenModel({this.movies3ItemList = const []}) {}

  List<Movies3ItemModel> movies3ItemList;

  DetailPageElevenModel copyWith({List<Movies3ItemModel>? movies3ItemList}) {
    return DetailPageElevenModel(
      movies3ItemList: movies3ItemList ?? this.movies3ItemList,
    );
  }

  @override
  List<Object?> get props => [movies3ItemList];
}
