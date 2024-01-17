// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specials_item_model.dart';
import 'io_item_model.dart';
import 'turnerhooch_item_model.dart';

/// This class defines the variables used in the [explore_seven_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSevenModel extends Equatable {
  ExploreSevenModel({
    this.specialsItemList = const [],
    this.ioItemList = const [],
    this.turnerhoochItemList = const [],
  }) {}

  List<SpecialsItemModel> specialsItemList;

  List<IoItemModel> ioItemList;

  List<TurnerhoochItemModel> turnerhoochItemList;

  ExploreSevenModel copyWith({
    List<SpecialsItemModel>? specialsItemList,
    List<IoItemModel>? ioItemList,
    List<TurnerhoochItemModel>? turnerhoochItemList,
  }) {
    return ExploreSevenModel(
      specialsItemList: specialsItemList ?? this.specialsItemList,
      ioItemList: ioItemList ?? this.ioItemList,
      turnerhoochItemList: turnerhoochItemList ?? this.turnerhoochItemList,
    );
  }

  @override
  List<Object?> get props =>
      [specialsItemList, ioItemList, turnerhoochItemList];
}
