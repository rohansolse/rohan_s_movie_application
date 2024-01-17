// ignore_for_file: must_be_immutable

part of 'detail_page_nine_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageNine widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageNineEvent extends Equatable {}

/// Event that is dispatched when the DetailPageNine widget is first created.
class DetailPageNineInitialEvent extends DetailPageNineEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends DetailPageNineEvent {
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
