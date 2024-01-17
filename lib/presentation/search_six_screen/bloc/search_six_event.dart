// ignore_for_file: must_be_immutable

part of 'search_six_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchSix widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchSixEvent extends Equatable {}

/// Event that is dispatched when the SearchSix widget is first created.
class SearchSixInitialEvent extends SearchSixEvent {
  @override
  List<Object?> get props => [];
}
