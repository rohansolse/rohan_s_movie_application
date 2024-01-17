// ignore_for_file: must_be_immutable

part of 'detail_page_eleven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageEleven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageElevenEvent extends Equatable {}

/// Event that is dispatched when the DetailPageEleven widget is first created.
class DetailPageElevenInitialEvent extends DetailPageElevenEvent {
  @override
  List<Object?> get props => [];
}
