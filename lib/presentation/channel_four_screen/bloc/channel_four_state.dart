// ignore_for_file: must_be_immutable

part of 'channel_four_bloc.dart';

/// Represents the state of ChannelFour in the application.
class ChannelFourState extends Equatable {
  ChannelFourState({this.channelFourModelObj});

  ChannelFourModel? channelFourModelObj;

  @override
  List<Object?> get props => [
        channelFourModelObj,
      ];
  ChannelFourState copyWith({ChannelFourModel? channelFourModelObj}) {
    return ChannelFourState(
      channelFourModelObj: channelFourModelObj ?? this.channelFourModelObj,
    );
  }
}
