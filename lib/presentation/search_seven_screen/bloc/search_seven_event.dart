// ignore_for_file: must_be_immutable

part of 'search_seven_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SearchSeven widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SearchSevenEvent extends Equatable {}

/// Event that is dispatched when the SearchSeven widget is first created.
class SearchSevenInitialEvent extends SearchSevenEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends SearchSevenEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
