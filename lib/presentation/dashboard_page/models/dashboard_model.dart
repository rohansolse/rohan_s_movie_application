// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specialslist1_item_model.dart';
import 'specialslist2_item_model.dart';
import 'specialslist3_item_model.dart';
import 'specialslist4_item_model.dart';
import 'specialslist5_item_model.dart';
import 'specialslist6_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.specialslist1ItemList = const [],
    this.specialslist2ItemList = const [],
    this.specialslist3ItemList = const [],
    this.specialslist4ItemList = const [],
    this.specialslist5ItemList = const [],
    this.specialslist6ItemList = const [],
  }) {}

  List<Specialslist1ItemModel> specialslist1ItemList;

  List<Specialslist2ItemModel> specialslist2ItemList;

  List<Specialslist3ItemModel> specialslist3ItemList;

  List<Specialslist4ItemModel> specialslist4ItemList;

  List<Specialslist5ItemModel> specialslist5ItemList;

  List<Specialslist6ItemModel> specialslist6ItemList;

  DashboardModel copyWith({
    List<Specialslist1ItemModel>? specialslist1ItemList,
    List<Specialslist2ItemModel>? specialslist2ItemList,
    List<Specialslist3ItemModel>? specialslist3ItemList,
    List<Specialslist4ItemModel>? specialslist4ItemList,
    List<Specialslist5ItemModel>? specialslist5ItemList,
    List<Specialslist6ItemModel>? specialslist6ItemList,
  }) {
    return DashboardModel(
      specialslist1ItemList:
          specialslist1ItemList ?? this.specialslist1ItemList,
      specialslist2ItemList:
          specialslist2ItemList ?? this.specialslist2ItemList,
      specialslist3ItemList:
          specialslist3ItemList ?? this.specialslist3ItemList,
      specialslist4ItemList:
          specialslist4ItemList ?? this.specialslist4ItemList,
      specialslist5ItemList:
          specialslist5ItemList ?? this.specialslist5ItemList,
      specialslist6ItemList:
          specialslist6ItemList ?? this.specialslist6ItemList,
    );
  }

  @override
  List<Object?> get props => [
        specialslist1ItemList,
        specialslist2ItemList,
        specialslist3ItemList,
        specialslist4ItemList,
        specialslist5ItemList,
        specialslist6ItemList
      ];
}
