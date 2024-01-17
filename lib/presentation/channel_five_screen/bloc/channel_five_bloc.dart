import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/movies5_item_model.dart';
import 'package:rohan_s_movie_application/presentation/channel_five_screen/models/channel_five_model.dart';
part 'channel_five_event.dart';
part 'channel_five_state.dart';

/// A bloc that manages the state of a ChannelFive according to the event that is dispatched to it.
class ChannelFiveBloc extends Bloc<ChannelFiveEvent, ChannelFiveState> {
  ChannelFiveBloc(ChannelFiveState initialState) : super(initialState) {
    on<ChannelFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelFiveInitialEvent event,
    Emitter<ChannelFiveState> emit,
  ) async {
    emit(state.copyWith(
        channelFiveModelObj: state.channelFiveModelObj
            ?.copyWith(movies5ItemList: fillMovies5ItemList())));
  }

  List<Movies5ItemModel> fillMovies5ItemList() {
    return [
      Movies5ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch",
          title1: "Sub-Title"),
      Movies5ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage26,
          title: "Hellen",
          title1: "What a happy Family"),
      Movies5ItemModel(
          turnerHooch: ImageConstant.imgThumbnailImage24,
          title: "Child’s Play",
          title1: "Sub-Title")
    ];
  }
}
