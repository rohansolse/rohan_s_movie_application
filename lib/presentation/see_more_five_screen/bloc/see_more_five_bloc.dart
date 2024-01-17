import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seemorefive_item_model.dart';
import 'package:rohan_s_movie_application/presentation/see_more_five_screen/models/see_more_five_model.dart';
part 'see_more_five_event.dart';
part 'see_more_five_state.dart';

/// A bloc that manages the state of a SeeMoreFive according to the event that is dispatched to it.
class SeeMoreFiveBloc extends Bloc<SeeMoreFiveEvent, SeeMoreFiveState> {
  SeeMoreFiveBloc(SeeMoreFiveState initialState) : super(initialState) {
    on<SeeMoreFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeeMoreFiveInitialEvent event,
    Emitter<SeeMoreFiveState> emit,
  ) async {
    emit(state.copyWith(
        seeMoreFiveModelObj: state.seeMoreFiveModelObj
            ?.copyWith(seemorefiveItemList: fillSeemorefiveItemList())));
  }

  List<SeemorefiveItemModel> fillSeemorefiveItemList() {
    return [
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage140x98,
          title: "Dark Tower"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage17,
          title: "Beauty and Beast"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage18, title: "The way Back"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage, title: "The Perfection"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage140x90,
          title: "Radioflash"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage1, title: "Turner & Hooch"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage19, title: "Encounter"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage12, title: "Dark Phoenix"),
      SeemorefiveItemModel(
          darkTower: ImageConstant.imgThumbnailImage13,
          title: "Pirates of Caribbean")
    ];
  }
}
