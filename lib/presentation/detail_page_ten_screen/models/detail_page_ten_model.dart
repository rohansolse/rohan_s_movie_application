// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies2_item_model.dart';

/// This class defines the variables used in the [detail_page_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageTenModel extends Equatable {
  DetailPageTenModel({this.movies2ItemList = const []}) {}

  List<Movies2ItemModel> movies2ItemList;

  DetailPageTenModel copyWith({List<Movies2ItemModel>? movies2ItemList}) {
    return DetailPageTenModel(
      movies2ItemList: movies2ItemList ?? this.movies2ItemList,
    );
  }

  @override
  List<Object?> get props => [movies2ItemList];
}
