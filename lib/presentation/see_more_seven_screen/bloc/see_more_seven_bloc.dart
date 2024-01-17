import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seemoreseven_item_model.dart';
import 'package:rohan_s_movie_application/presentation/see_more_seven_screen/models/see_more_seven_model.dart';
part 'see_more_seven_event.dart';
part 'see_more_seven_state.dart';

/// A bloc that manages the state of a SeeMoreSeven according to the event that is dispatched to it.
class SeeMoreSevenBloc extends Bloc<SeeMoreSevenEvent, SeeMoreSevenState> {
  SeeMoreSevenBloc(SeeMoreSevenState initialState) : super(initialState) {
    on<SeeMoreSevenInitialEvent>(_onInitialize);
  }

  List<SeemoresevenItemModel> fillSeemoresevenItemList() {
    return [
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage28,
          title: "Captain Marvel"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage24, title: "Child’s Play"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage12, title: "Dark Phoenix"),
      SeemoresevenItemModel(
          jallikatta: ImageConstant.imgThumbnailImage30, title: "Arana")
    ];
  }

  _onInitialize(
    SeeMoreSevenInitialEvent event,
    Emitter<SeeMoreSevenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        seeMoreSevenModelObj: state.seeMoreSevenModelObj
            ?.copyWith(seemoresevenItemList: fillSeemoresevenItemList())));
  }
}
