// ignore_for_file: must_be_immutable

part of 'search_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchEightEvent extends Equatable {}

/// Event that is dispatched when the SearchEight widget is first created.
class SearchEightInitialEvent extends SearchEightEvent {
  @override
  List<Object?> get props => [];
}
