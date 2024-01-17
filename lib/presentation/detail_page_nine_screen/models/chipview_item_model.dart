// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview_item_widget] screen.
class ChipviewItemModel extends Equatable {
  ChipviewItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Action";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;

  ChipviewItemModel copyWith({
    String? tags,
    bool? isSelected,
  }) {
    return ChipviewItemModel(
      tags: tags ?? this.tags,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tags, isSelected];
}
