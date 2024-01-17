// ignore_for_file: must_be_immutable

part of 'channel_six_bloc.dart';

/// Represents the state of ChannelSix in the application.
class ChannelSixState extends Equatable {
  ChannelSixState({this.channelSixModelObj});

  ChannelSixModel? channelSixModelObj;

  @override
  List<Object?> get props => [
        channelSixModelObj,
      ];
  ChannelSixState copyWith({ChannelSixModel? channelSixModelObj}) {
    return ChannelSixState(
      channelSixModelObj: channelSixModelObj ?? this.channelSixModelObj,
    );
  }
}
