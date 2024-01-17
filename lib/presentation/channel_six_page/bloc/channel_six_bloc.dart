import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/channelsix_item_model.dart';
import 'package:rohan_s_movie_application/presentation/channel_six_page/models/channel_six_model.dart';
part 'channel_six_event.dart';
part 'channel_six_state.dart';

/// A bloc that manages the state of a ChannelSix according to the event that is dispatched to it.
class ChannelSixBloc extends Bloc<ChannelSixEvent, ChannelSixState> {
  ChannelSixBloc(ChannelSixState initialState) : super(initialState) {
    on<ChannelSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelSixInitialEvent event,
    Emitter<ChannelSixState> emit,
  ) async {
    emit(state.copyWith(
        channelSixModelObj: state.channelSixModelObj?.copyWith(
      channelsixItemList: fillChannelsixItemList(),
    )));
  }

  List<ChannelsixItemModel> fillChannelsixItemList() {
    return [
      ChannelsixItemModel(header: "Last time we meet", time: "02:00 AM (EST)"),
      ChannelsixItemModel(header: "Pain", time: "05:00 AM (EST)"),
      ChannelsixItemModel(header: "I Don't Think So", time: "06:00 AM (EST)"),
      ChannelsixItemModel(header: "Love You More", time: "04:00 AM (EST)"),
      ChannelsixItemModel(header: "War", time: "08:00 AM (EST)")
    ];
  }
}
