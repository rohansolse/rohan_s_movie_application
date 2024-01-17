import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchnine_item_model.dart';
import 'package:rohan_s_movie_application/presentation/search_nine_screen/models/search_nine_model.dart';
part 'search_nine_event.dart';
part 'search_nine_state.dart';

/// A bloc that manages the state of a SearchNine according to the event that is dispatched to it.
class SearchNineBloc extends Bloc<SearchNineEvent, SearchNineState> {
  SearchNineBloc(SearchNineState initialState) : super(initialState) {
    on<SearchNineInitialEvent>(_onInitialize);
  }

  List<SearchnineItemModel> fillSearchnineItemList() {
    return [
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen"),
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage28,
          title: "Captain Marvel"),
      SearchnineItemModel(
          jallikatta: ImageConstant.imgThumbnailImage24, title: "Child’s Play")
    ];
  }

  _onInitialize(
    SearchNineInitialEvent event,
    Emitter<SearchNineState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchNineModelObj: state.searchNineModelObj
            ?.copyWith(searchnineItemList: fillSearchnineItemList())));
  }
}
