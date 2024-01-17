// ignore_for_file: must_be_immutable

part of 'channel_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChannelFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChannelFiveEvent extends Equatable {}

/// Event that is dispatched when the ChannelFive widget is first created.
class ChannelFiveInitialEvent extends ChannelFiveEvent {
  @override
  List<Object?> get props => [];
}
