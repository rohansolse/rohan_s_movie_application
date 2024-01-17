import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchten_item_model.dart';
import 'package:rohan_s_movie_application/presentation/search_ten_screen/models/search_ten_model.dart';
part 'search_ten_event.dart';
part 'search_ten_state.dart';

/// A bloc that manages the state of a SearchTen according to the event that is dispatched to it.
class SearchTenBloc extends Bloc<SearchTenEvent, SearchTenState> {
  SearchTenBloc(SearchTenState initialState) : super(initialState) {
    on<SearchTenInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SearchTenState> emit,
  ) {
    emit(state.copyWith(popularSearch: event.value));
  }

  List<SearchtenItemModel> fillSearchtenItemList() {
    return [
      SearchtenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SearchtenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
      SearchtenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen")
    ];
  }

  _onInitialize(
    SearchTenInitialEvent event,
    Emitter<SearchTenState> emit,
  ) async {
    emit(state.copyWith(
        searchController: TextEditingController(), popularSearch: false));
    emit(state.copyWith(
        searchTenModelObj: state.searchTenModelObj
            ?.copyWith(searchtenItemList: fillSearchtenItemList())));
  }
}
