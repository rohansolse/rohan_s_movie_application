import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rohan_s_movie_application/presentation/search_eight_screen/models/search_eight_model.dart';
part 'search_eight_event.dart';
part 'search_eight_state.dart';

/// A bloc that manages the state of a SearchEight according to the event that is dispatched to it.
class SearchEightBloc extends Bloc<SearchEightEvent, SearchEightState> {
  SearchEightBloc(SearchEightState initialState) : super(initialState) {
    on<SearchEightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SearchEightInitialEvent event,
    Emitter<SearchEightState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
