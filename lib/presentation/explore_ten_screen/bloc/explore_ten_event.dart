// ignore_for_file: must_be_immutable

part of 'explore_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExploreTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExploreTenEvent extends Equatable {}

/// Event that is dispatched when the ExploreTen widget is first created.
class ExploreTenInitialEvent extends ExploreTenEvent {
  @override
  List<Object?> get props => [];
}
