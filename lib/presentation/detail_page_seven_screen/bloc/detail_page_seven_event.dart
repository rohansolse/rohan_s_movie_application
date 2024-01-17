// ignore_for_file: must_be_immutable

part of 'detail_page_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageSevenEvent extends Equatable {}

/// Event that is dispatched when the DetailPageSeven widget is first created.
class DetailPageSevenInitialEvent extends DetailPageSevenEvent {
  @override
  List<Object?> get props => [];
}
