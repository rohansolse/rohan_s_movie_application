import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies3_item_model.dart';
import 'package:rohan_s_movie_application/presentation/detail_page_eleven_screen/models/detail_page_eleven_model.dart';
part 'detail_page_eleven_event.dart';
part 'detail_page_eleven_state.dart';

/// A bloc that manages the state of a DetailPageEleven according to the event that is dispatched to it.
class DetailPageElevenBloc
    extends Bloc<DetailPageElevenEvent, DetailPageElevenState> {
  DetailPageElevenBloc(DetailPageElevenState initialState)
      : super(initialState) {
    on<DetailPageElevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageElevenInitialEvent event,
    Emitter<DetailPageElevenState> emit,
  ) async {
    emit(state.copyWith(
        detailPageElevenModelObj: state.detailPageElevenModelObj
            ?.copyWith(movies3ItemList: fillMovies3ItemList())));
  }

  List<Movies3ItemModel> fillMovies3ItemList() {
    return [
      Movies3ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      Movies3ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      Movies3ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}
