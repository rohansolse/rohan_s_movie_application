// ignore_for_file: must_be_immutable

part of 'detail_page_twelve_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageTwelve widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageTwelveEvent extends Equatable {}

/// Event that is dispatched when the DetailPageTwelve widget is first created.
class DetailPageTwelveInitialEvent extends DetailPageTwelveEvent {
  @override
  List<Object?> get props => [];
}
