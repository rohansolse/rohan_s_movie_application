// ignore_for_file: must_be_immutable

part of 'search_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchNineEvent extends Equatable {}

/// Event that is dispatched when the SearchNine widget is first created.
class SearchNineInitialEvent extends SearchNineEvent {
  @override
  List<Object?> get props => [];
}
