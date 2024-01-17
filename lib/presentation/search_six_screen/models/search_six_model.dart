// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movieslist_item_model.dart';
import 'movies6_item_model.dart';
import 'movies7_item_model.dart';

/// This class defines the variables used in the [search_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSixModel extends Equatable {
  SearchSixModel({
    this.movieslistItemList = const [],
    this.movies6ItemList = const [],
    this.movies7ItemList = const [],
  }) {}

  List<MovieslistItemModel> movieslistItemList;

  List<Movies6ItemModel> movies6ItemList;

  List<Movies7ItemModel> movies7ItemList;

  SearchSixModel copyWith({
    List<MovieslistItemModel>? movieslistItemList,
    List<Movies6ItemModel>? movies6ItemList,
    List<Movies7ItemModel>? movies7ItemList,
  }) {
    return SearchSixModel(
      movieslistItemList: movieslistItemList ?? this.movieslistItemList,
      movies6ItemList: movies6ItemList ?? this.movies6ItemList,
      movies7ItemList: movies7ItemList ?? this.movies7ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [movieslistItemList, movies6ItemList, movies7ItemList];
}
