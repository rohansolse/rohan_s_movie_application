// ignore_for_file: must_be_immutable

part of 'explore_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreEightEvent extends Equatable {}

/// Event that is dispatched when the ExploreEight widget is first created.
class ExploreEightInitialEvent extends ExploreEightEvent {
  @override
  List<Object?> get props => [];
}
