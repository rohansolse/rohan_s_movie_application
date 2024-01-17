// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchnine_item_model.dart';

/// This class defines the variables used in the [search_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNineModel extends Equatable {
  SearchNineModel({this.searchnineItemList = const []}) {}

  List<SearchnineItemModel> searchnineItemList;

  SearchNineModel copyWith({List<SearchnineItemModel>? searchnineItemList}) {
    return SearchNineModel(
      searchnineItemList: searchnineItemList ?? this.searchnineItemList,
    );
  }

  @override
  List<Object?> get props => [searchnineItemList];
}
