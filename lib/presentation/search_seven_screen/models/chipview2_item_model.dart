// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [chipview2_item_widget] screen.
class Chipview2ItemModel extends Equatable {
  Chipview2ItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Mark Love";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;

  Chipview2ItemModel copyWith({
    String? tags,
    bool? isSelected,
  }) {
    return Chipview2ItemModel(
      tags: tags ?? this.tags,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tags, isSelected];
}
