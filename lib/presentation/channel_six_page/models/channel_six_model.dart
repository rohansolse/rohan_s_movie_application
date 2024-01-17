// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'channelsix_item_model.dart';

/// This class defines the variables used in the [channel_six_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelSixModel extends Equatable {
  ChannelSixModel({this.channelsixItemList = const []}) {}

  List<ChannelsixItemModel> channelsixItemList;

  ChannelSixModel copyWith({List<ChannelsixItemModel>? channelsixItemList}) {
    return ChannelSixModel(
      channelsixItemList: channelsixItemList ?? this.channelsixItemList,
    );
  }

  @override
  List<Object?> get props => [channelsixItemList];
}
