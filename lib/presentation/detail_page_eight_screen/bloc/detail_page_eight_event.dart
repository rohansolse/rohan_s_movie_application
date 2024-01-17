// ignore_for_file: must_be_immutable

part of 'detail_page_eight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageEight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageEightEvent extends Equatable {}

/// Event that is dispatched when the DetailPageEight widget is first created.
class DetailPageEightInitialEvent extends DetailPageEightEvent {
  @override
  List<Object?> get props => [];
}
