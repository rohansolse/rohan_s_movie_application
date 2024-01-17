import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seemoresix_item_model.dart';
import 'package:rohan_s_movie_application/presentation/see_more_six_screen/models/see_more_six_model.dart';
part 'see_more_six_event.dart';
part 'see_more_six_state.dart';

/// A bloc that manages the state of a SeeMoreSix according to the event that is dispatched to it.
class SeeMoreSixBloc extends Bloc<SeeMoreSixEvent, SeeMoreSixState> {
  SeeMoreSixBloc(SeeMoreSixState initialState) : super(initialState) {
    on<SeeMoreSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SeeMoreSixInitialEvent event,
    Emitter<SeeMoreSixState> emit,
  ) async {
    emit(state.copyWith(
        seeMoreSixModelObj: state.seeMoreSixModelObj
            ?.copyWith(seemoresixItemList: fillSeemoresixItemList())));
  }

  List<SeemoresixItemModel> fillSeemoresixItemList() {
    return [
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage140x90,
          title: "Rodioflash"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage, title: "The Perfection"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage21, title: "The Hobbit"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage12, title: "Dark Phoenix"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage22, title: "Ghost Writer"),
      SeemoresixItemModel(
          rodioflash: ImageConstant.imgThumbnailImage24, title: "Child’s Play")
    ];
  }
}
