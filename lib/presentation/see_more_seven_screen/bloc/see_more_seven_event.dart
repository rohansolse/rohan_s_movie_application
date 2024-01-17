// ignore_for_file: must_be_immutable

part of 'see_more_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeeMoreSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeeMoreSevenEvent extends Equatable {}

/// Event that is dispatched when the SeeMoreSeven widget is first created.
class SeeMoreSevenInitialEvent extends SeeMoreSevenEvent {
  @override
  List<Object?> get props => [];
}
