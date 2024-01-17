// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'searchgrid_item_model.dart';
import 'chipview2_item_model.dart';

/// This class defines the variables used in the [search_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSevenModel extends Equatable {
  SearchSevenModel({
    this.searchgridItemList = const [],
    this.chipview2ItemList = const [],
  }) {}

  List<SearchgridItemModel> searchgridItemList;

  List<Chipview2ItemModel> chipview2ItemList;

  SearchSevenModel copyWith({
    List<SearchgridItemModel>? searchgridItemList,
    List<Chipview2ItemModel>? chipview2ItemList,
  }) {
    return SearchSevenModel(
      searchgridItemList: searchgridItemList ?? this.searchgridItemList,
      chipview2ItemList: chipview2ItemList ?? this.chipview2ItemList,
    );
  }

  @override
  List<Object?> get props => [searchgridItemList, chipview2ItemList];
}
