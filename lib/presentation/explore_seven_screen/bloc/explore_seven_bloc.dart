import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specials_item_model.dart';
import '../models/io_item_model.dart';
import '../models/turnerhooch_item_model.dart';
import 'package:rohan_s_movie_application/presentation/explore_seven_screen/models/explore_seven_model.dart';
part 'explore_seven_event.dart';
part 'explore_seven_state.dart';

/// A bloc that manages the state of a ExploreSeven according to the event that is dispatched to it.
class ExploreSevenBloc extends Bloc<ExploreSevenEvent, ExploreSevenState> {
  ExploreSevenBloc(ExploreSevenState initialState) : super(initialState) {
    on<ExploreSevenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreSevenInitialEvent event,
    Emitter<ExploreSevenState> emit,
  ) async {
    emit(state.copyWith(
        exploreSevenModelObj: state.exploreSevenModelObj?.copyWith(
            specialsItemList: fillSpecialsItemList(),
            ioItemList: fillIoItemList(),
            turnerhoochItemList: fillTurnerhoochItemList())));
  }

  List<SpecialsItemModel> fillSpecialsItemList() {
    return [
      SpecialsItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      SpecialsItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      SpecialsItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      SpecialsItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<IoItemModel> fillIoItemList() {
    return [
      IoItemModel(
          io: ImageConstant.imgThumbnailImage180x120,
          title: "IO",
          title1: "No Christmas For You"),
      IoItemModel(
          io: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "As long we fight back, we have…"),
      IoItemModel(
          io: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Sub-Title"),
      IoItemModel(
          io: ImageConstant.imgThumbnailImage12,
          title: "Title",
          title1: "As long we fight …"),
      IoItemModel(
          io: ImageConstant.imgThumbnailImage140x90,
          title: "Radioflash",
          title1: "We have More …"),
      IoItemModel(
          io: ImageConstant.imgThumbnailImage28,
          title: "Captain Marvel",
          title1: "Nice One")
    ];
  }

  List<TurnerhoochItemModel> fillTurnerhoochItemList() {
    return [
      TurnerhoochItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      TurnerhoochItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      TurnerhoochItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title"),
      TurnerhoochItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage20,
          title: "Jallikattu",
          title1: "Lijo Jose Pelliserys on Earth"),
      TurnerhoochItemModel(
          title: "Yesterday ", title1: "Everyone in the world has forgotten")
    ];
  }
}
