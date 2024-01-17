// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movielist_item_model.dart';

/// This class defines the variables used in the [detail_page_twelve_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageTwelveModel extends Equatable {
  DetailPageTwelveModel({this.movielistItemList = const []}) {}

  List<MovielistItemModel> movielistItemList;

  DetailPageTwelveModel copyWith(
      {List<MovielistItemModel>? movielistItemList}) {
    return DetailPageTwelveModel(
      movielistItemList: movielistItemList ?? this.movielistItemList,
    );
  }

  @override
  List<Object?> get props => [movielistItemList];
}
