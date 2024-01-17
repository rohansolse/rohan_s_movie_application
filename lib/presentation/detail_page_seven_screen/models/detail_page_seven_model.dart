// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies_item_model.dart';

/// This class defines the variables used in the [detail_page_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageSevenModel extends Equatable {
  DetailPageSevenModel({this.moviesItemList = const []}) {}

  List<MoviesItemModel> moviesItemList;

  DetailPageSevenModel copyWith({List<MoviesItemModel>? moviesItemList}) {
    return DetailPageSevenModel(
      moviesItemList: moviesItemList ?? this.moviesItemList,
    );
  }

  @override
  List<Object?> get props => [moviesItemList];
}
