import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:rohan_s_movie_application/presentation/explore_ten_screen/models/explore_ten_model.dart';
part 'explore_ten_event.dart';
part 'explore_ten_state.dart';

/// A bloc that manages the state of a ExploreTen according to the event that is dispatched to it.
class ExploreTenBloc extends Bloc<ExploreTenEvent, ExploreTenState> {
  ExploreTenBloc(ExploreTenState initialState) : super(initialState) {
    on<ExploreTenInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExploreTenInitialEvent event,
    Emitter<ExploreTenState> emit,
  ) async {}
}
