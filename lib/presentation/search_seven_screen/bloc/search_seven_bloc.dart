import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/searchgrid_item_model.dart';
import '../models/chipview2_item_model.dart';
import 'package:rohan_s_movie_application/presentation/search_seven_screen/models/search_seven_model.dart';
part 'search_seven_event.dart';
part 'search_seven_state.dart';

/// A bloc that manages the state of a SearchSeven according to the event that is dispatched to it.
class SearchSevenBloc extends Bloc<SearchSevenEvent, SearchSevenState> {
  SearchSevenBloc(SearchSevenState initialState) : super(initialState) {
    on<SearchSevenInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<SearchSevenState> emit,
  ) {
    List<Chipview2ItemModel> newList = List<Chipview2ItemModel>.from(
        state.searchSevenModelObj!.chipview2ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        searchSevenModelObj:
            state.searchSevenModelObj?.copyWith(chipview2ItemList: newList)));
  }

  List<SearchgridItemModel> fillSearchgridItemList() {
    return [
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage20, title: "Jallikatta"),
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage25, title: "The Brave"),
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage26, title: "Helen"),
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage27, title: "A1"),
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage28,
          title: "Captain Marvel"),
      SearchgridItemModel(
          jallikatta: ImageConstant.imgThumbnailImage24, title: "Child’s Play")
    ];
  }

  List<Chipview2ItemModel> fillChipview2ItemList() {
    return List.generate(4, (index) => Chipview2ItemModel());
  }

  _onInitialize(
    SearchSevenInitialEvent event,
    Emitter<SearchSevenState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchSevenModelObj: state.searchSevenModelObj?.copyWith(
            searchgridItemList: fillSearchgridItemList(),
            chipview2ItemList: fillChipview2ItemList())));
  }
}
