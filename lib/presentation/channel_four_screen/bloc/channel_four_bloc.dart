import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/channelfour_item_model.dart';
import 'package:rohan_s_movie_application/presentation/channel_four_screen/models/channel_four_model.dart';
part 'channel_four_event.dart';
part 'channel_four_state.dart';

/// A bloc that manages the state of a ChannelFour according to the event that is dispatched to it.
class ChannelFourBloc extends Bloc<ChannelFourEvent, ChannelFourState> {
  ChannelFourBloc(ChannelFourState initialState) : super(initialState) {
    on<ChannelFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChannelFourInitialEvent event,
    Emitter<ChannelFourState> emit,
  ) async {
    emit(state.copyWith(
        channelFourModelObj: state.channelFourModelObj
            ?.copyWith(channelfourItemList: fillChannelfourItemList())));
  }

  List<ChannelfourItemModel> fillChannelfourItemList() {
    return [
      ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage, ktv1: "K TV"),
      ChannelfourItemModel(
          ktv: ImageConstant.imgBackgroundImage56x56, ktv1: "ONENEWS TV"),
      ChannelfourItemModel(
          ktv: ImageConstant.imgBackgroundImage1, ktv1: "CNN TV"),
      ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage2, ktv1: "ESPN")
    ];
  }
}
