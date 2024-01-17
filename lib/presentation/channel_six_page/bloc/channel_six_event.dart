// ignore_for_file: must_be_immutable

part of 'channel_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChannelSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChannelSixEvent extends Equatable {}

/// Event that is dispatched when the ChannelSix widget is first created.
class ChannelSixInitialEvent extends ChannelSixEvent {
  @override
  List<Object?> get props => [];
}
