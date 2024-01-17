import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipview_item_model.dart';
import '../models/movies1_item_model.dart';
import 'package:rohan_s_movie_application/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';
part 'detail_page_nine_event.dart';
part 'detail_page_nine_state.dart';

/// A bloc that manages the state of a DetailPageNine according to the event that is dispatched to it.
class DetailPageNineBloc
    extends Bloc<DetailPageNineEvent, DetailPageNineState> {
  DetailPageNineBloc(DetailPageNineState initialState) : super(initialState) {
    on<DetailPageNineInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    DetailPageNineInitialEvent event,
    Emitter<DetailPageNineState> emit,
  ) async {
    emit(state.copyWith(
        detailPageNineModelObj: state.detailPageNineModelObj?.copyWith(
            chipviewItemList: fillChipviewItemList(),
            movies1ItemList: fillMovies1ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DetailPageNineState> emit,
  ) {
    List<ChipviewItemModel> newList = List<ChipviewItemModel>.from(
        state.detailPageNineModelObj!.chipviewItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        detailPageNineModelObj:
            state.detailPageNineModelObj?.copyWith(chipviewItemList: newList)));
  }

  List<ChipviewItemModel> fillChipviewItemList() {
    return List.generate(4, (index) => ChipviewItemModel());
  }

  List<Movies1ItemModel> fillMovies1ItemList() {
    return [
      Movies1ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage180x120,
          title: "IO: Netflix",
          title1: "In near future we must save earth"),
      Movies1ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants",
          title1: "No more Surrender this time"),
      Movies1ItemModel(
          iONetflix: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen",
          title1: "Loyalty under everything")
    ];
  }
}
