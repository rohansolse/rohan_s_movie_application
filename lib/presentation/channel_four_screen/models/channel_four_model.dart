// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'channelfour_item_model.dart';

/// This class defines the variables used in the [channel_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFourModel extends Equatable {
  ChannelFourModel({this.channelfourItemList = const []}) {}

  List<ChannelfourItemModel> channelfourItemList;

  ChannelFourModel copyWith({List<ChannelfourItemModel>? channelfourItemList}) {
    return ChannelFourModel(
      channelfourItemList: channelfourItemList ?? this.channelfourItemList,
    );
  }

  @override
  List<Object?> get props => [channelfourItemList];
}
