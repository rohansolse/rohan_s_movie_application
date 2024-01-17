import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials1_item_model.dart';
import '../models/exploregrid1_item_model.dart';
import 'package:rohan_s_movie_application/presentation/explore_eight_page/models/explore_eight_model.dart';
part 'explore_eight_event.dart';
part 'explore_eight_state.dart';

/// A bloc that manages the state of a ExploreEight according to the event that is dispatched to it.
class ExploreEightBloc extends Bloc<ExploreEightEvent, ExploreEightState> {
  ExploreEightBloc(ExploreEightState initialState) : super(initialState) {
    on<ExploreEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreEightInitialEvent event,
    Emitter<ExploreEightState> emit,
  ) async {
    emit(state.copyWith(
        exploreEightModelObj: state.exploreEightModelObj?.copyWith(
            specials1ItemList: fillSpecials1ItemList(),
            exploregrid1ItemList: fillExploregrid1ItemList())));
    NavigatorService.pushNamed(
      AppRoutes.exploreNineScreen,
    );
  }

  List<Specials1ItemModel> fillSpecials1ItemList() {
    return [
      Specials1ItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      Specials1ItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      Specials1ItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      Specials1ItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<Exploregrid1ItemModel> fillExploregrid1ItemList() {
    return [
      Exploregrid1ItemModel(
          io: ImageConstant.imgThumbnailImage180x120,
          title: "IO",
          title1: "No Christmas For You"),
      Exploregrid1ItemModel(
          io: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "As long we fight back, we have…"),
      Exploregrid1ItemModel(
          io: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Sub-Title"),
      Exploregrid1ItemModel(
          io: ImageConstant.imgThumbnailImage12,
          title: "Title",
          title1: "As long we fight …")
    ];
  }
}
