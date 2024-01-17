import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies_item_model.dart';
import 'package:rohan_s_movie_application/presentation/detail_page_seven_screen/models/detail_page_seven_model.dart';
part 'detail_page_seven_event.dart';
part 'detail_page_seven_state.dart';

/// A bloc that manages the state of a DetailPageSeven according to the event that is dispatched to it.
class DetailPageSevenBloc
    extends Bloc<DetailPageSevenEvent, DetailPageSevenState> {
  DetailPageSevenBloc(DetailPageSevenState initialState) : super(initialState) {
    on<DetailPageSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageSevenInitialEvent event,
    Emitter<DetailPageSevenState> emit,
  ) async {
    emit(state.copyWith(
        detailPageSevenModelObj: state.detailPageSevenModelObj
            ?.copyWith(moviesItemList: fillMoviesItemList())));
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
    NavigatorService.pushNamed(
      AppRoutes.detailPageNineScreen,
    );
  }

  List<MoviesItemModel> fillMoviesItemList() {
    return [
      MoviesItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      MoviesItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      MoviesItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}
