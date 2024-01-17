import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movielist_item_model.dart';
import 'package:rohan_s_movie_application/presentation/detail_page_twelve_screen/models/detail_page_twelve_model.dart';
part 'detail_page_twelve_event.dart';
part 'detail_page_twelve_state.dart';

/// A bloc that manages the state of a DetailPageTwelve according to the event that is dispatched to it.
class DetailPageTwelveBloc
    extends Bloc<DetailPageTwelveEvent, DetailPageTwelveState> {
  DetailPageTwelveBloc(DetailPageTwelveState initialState)
      : super(initialState) {
    on<DetailPageTwelveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageTwelveInitialEvent event,
    Emitter<DetailPageTwelveState> emit,
  ) async {
    emit(state.copyWith(
        detailPageTwelveModelObj: state.detailPageTwelveModelObj
            ?.copyWith(movielistItemList: fillMovielistItemList())));
  }

  List<MovielistItemModel> fillMovielistItemList() {
    return [
      MovielistItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      MovielistItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      MovielistItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}
