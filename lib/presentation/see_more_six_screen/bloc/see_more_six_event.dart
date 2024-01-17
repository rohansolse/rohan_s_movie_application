// ignore_for_file: must_be_immutable

part of 'see_more_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeeMoreSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeeMoreSixEvent extends Equatable {}

/// Event that is dispatched when the SeeMoreSix widget is first created.
class SeeMoreSixInitialEvent extends SeeMoreSixEvent {
  @override
  List<Object?> get props => [];
}
