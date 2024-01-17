// ignore_for_file: must_be_immutable

part of 'channel_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChannelFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChannelFourEvent extends Equatable {}

/// Event that is dispatched when the ChannelFour widget is first created.
class ChannelFourInitialEvent extends ChannelFourEvent {
  @override
  List<Object?> get props => [];
}
