// ignore_for_file: must_be_immutable

part of 'channel_five_bloc.dart';

/// Represents the state of ChannelFive in the application.
class ChannelFiveState extends Equatable {
  ChannelFiveState({this.channelFiveModelObj});

  ChannelFiveModel? channelFiveModelObj;

  @override
  List<Object?> get props => [
        channelFiveModelObj,
      ];
  ChannelFiveState copyWith({ChannelFiveModel? channelFiveModelObj}) {
    return ChannelFiveState(
      channelFiveModelObj: channelFiveModelObj ?? this.channelFiveModelObj,
    );
  }
}
