// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies5_item_model.dart';

/// This class defines the variables used in the [channel_five_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChannelFiveModel extends Equatable {
  ChannelFiveModel({this.movies5ItemList = const []}) {}

  List<Movies5ItemModel> movies5ItemList;

  ChannelFiveModel copyWith({List<Movies5ItemModel>? movies5ItemList}) {
    return ChannelFiveModel(
      movies5ItemList: movies5ItemList ?? this.movies5ItemList,
    );
  }

  @override
  List<Object?> get props => [movies5ItemList];
}
