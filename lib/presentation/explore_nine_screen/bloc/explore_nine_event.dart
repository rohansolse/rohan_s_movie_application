// ignore_for_file: must_be_immutable

part of 'explore_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreNineEvent extends Equatable {}

/// Event that is dispatched when the ExploreNine widget is first created.
class ExploreNineInitialEvent extends ExploreNineEvent {
  @override
  List<Object?> get props => [];
}
