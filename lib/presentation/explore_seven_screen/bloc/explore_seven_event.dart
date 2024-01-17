// ignore_for_file: must_be_immutable

part of 'explore_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreSevenEvent extends Equatable {}

/// Event that is dispatched when the ExploreSeven widget is first created.
class ExploreSevenInitialEvent extends ExploreSevenEvent {
  @override
  List<Object?> get props => [];
}
