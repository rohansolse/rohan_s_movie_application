// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchten_item_model.dart';

/// This class defines the variables used in the [search_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTenModel extends Equatable {
  SearchTenModel({this.searchtenItemList = const []}) {}

  List<SearchtenItemModel> searchtenItemList;

  SearchTenModel copyWith({List<SearchtenItemModel>? searchtenItemList}) {
    return SearchTenModel(
      searchtenItemList: searchtenItemList ?? this.searchtenItemList,
    );
  }

  @override
  List<Object?> get props => [searchtenItemList];
}
