// ignore_for_file: must_be_immutable

part of 'see_more_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SeeMoreFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SeeMoreFiveEvent extends Equatable {}

/// Event that is dispatched when the SeeMoreFive widget is first created.
class SeeMoreFiveInitialEvent extends SeeMoreFiveEvent {
  @override
  List<Object?> get props => [];
}
