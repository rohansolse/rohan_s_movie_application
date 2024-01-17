// ignore_for_file: must_be_immutable

part of 'account_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccountFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccountFiveEvent extends Equatable {}

/// Event that is dispatched when the AccountFive widget is first created.
class AccountFiveInitialEvent extends AccountFiveEvent {
  @override
  List<Object?> get props => [];
}
