import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movieslist_item_model.dart';
import '../models/movies6_item_model.dart';
import '../models/movies7_item_model.dart';
import 'package:rohan_s_movie_application/presentation/search_six_screen/models/search_six_model.dart';
part 'search_six_event.dart';
part 'search_six_state.dart';

/// A bloc that manages the state of a SearchSix according to the event that is dispatched to it.
class SearchSixBloc extends Bloc<SearchSixEvent, SearchSixState> {
  SearchSixBloc(SearchSixState initialState) : super(initialState) {
    on<SearchSixInitialEvent>(_onInitialize);
  }

  List<MovieslistItemModel> fillMovieslistItemList() {
    return [
      MovieslistItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      MovieslistItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      MovieslistItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  List<Movies6ItemModel> fillMovies6ItemList() {
    return [
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies6ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  List<Movies7ItemModel> fillMovies7ItemList() {
    return [
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies7ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }

  _onInitialize(
    SearchSixInitialEvent event,
    Emitter<SearchSixState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        searchSixModelObj: state.searchSixModelObj?.copyWith(
            movieslistItemList: fillMovieslistItemList(),
            movies6ItemList: fillMovies6ItemList(),
            movies7ItemList: fillMovies7ItemList())));
  }
}
