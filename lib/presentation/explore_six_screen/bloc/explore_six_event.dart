// ignore_for_file: must_be_immutable

part of 'explore_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreSixEvent extends Equatable {}

/// Event that is dispatched when the ExploreSix widget is first created.
class ExploreSixInitialEvent extends ExploreSixEvent {
  @override
  List<Object?> get props => [];
}
