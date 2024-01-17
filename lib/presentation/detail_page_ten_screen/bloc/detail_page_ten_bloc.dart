import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies2_item_model.dart';
import 'package:rohan_s_movie_application/presentation/detail_page_ten_screen/models/detail_page_ten_model.dart';
part 'detail_page_ten_event.dart';
part 'detail_page_ten_state.dart';

/// A bloc that manages the state of a DetailPageTen according to the event that is dispatched to it.
class DetailPageTenBloc extends Bloc<DetailPageTenEvent, DetailPageTenState> {
  DetailPageTenBloc(DetailPageTenState initialState) : super(initialState) {
    on<DetailPageTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageTenInitialEvent event,
    Emitter<DetailPageTenState> emit,
  ) async {
    emit(state.copyWith(
        detailPageTenModelObj: state.detailPageTenModelObj
            ?.copyWith(movies2ItemList: fillMovies2ItemList())));
  }

  List<Movies2ItemModel> fillMovies2ItemList() {
    return [
      Movies2ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      Movies2ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      Movies2ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}
