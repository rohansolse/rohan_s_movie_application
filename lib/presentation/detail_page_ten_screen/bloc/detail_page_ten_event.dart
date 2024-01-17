// ignore_for_file: must_be_immutable

part of 'detail_page_ten_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageTen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageTenEvent extends Equatable {}

/// Event that is dispatched when the DetailPageTen widget is first created.
class DetailPageTenInitialEvent extends DetailPageTenEvent {
  @override
  List<Object?> get props => [];
}
