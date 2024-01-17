import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/specialslist1_item_model.dart';
import '../models/specialslist2_item_model.dart';
import '../models/specialslist3_item_model.dart';
import '../models/specialslist4_item_model.dart';
import '../models/specialslist5_item_model.dart';
import '../models/specialslist6_item_model.dart';
import 'package:rohan_s_movie_application/presentation/dashboard_page/models/dashboard_model.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

/// A bloc that manages the state of a Dashboard according to the event that is dispatched to it.
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc(DashboardState initialState) : super(initialState) {
    on<DashboardInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DashboardInitialEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(state.copyWith(
        dashboardModelObj: state.dashboardModelObj?.copyWith(
            specialslist1ItemList: fillSpecialslist1ItemList(),
            specialslist2ItemList: fillSpecialslist2ItemList(),
            specialslist3ItemList: fillSpecialslist3ItemList(),
            specialslist4ItemList: fillSpecialslist4ItemList(),
            specialslist5ItemList: fillSpecialslist5ItemList(),
            specialslist6ItemList: fillSpecialslist6ItemList())));
  }

  List<Specialslist1ItemModel> fillSpecialslist1ItemList() {
    return [
      Specialslist1ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage,
          title: "The Perfection"),
      Specialslist1ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage140x90,
          title: "Radio Flash"),
      Specialslist1ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch"),
      Specialslist1ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage2,
          title: "Stranger Things")
    ];
  }

  List<Specialslist2ItemModel> fillSpecialslist2ItemList() {
    return [
      Specialslist2ItemModel(
          image: ImageConstant.imgThumbnailImage3,
          title: "Jumanji The Next Level"),
      Specialslist2ItemModel(
          image: ImageConstant.imgThumbnailImage4, title: "Cloud Atlas"),
      Specialslist2ItemModel(
          image: ImageConstant.imgThumbnailImage5, title: "Charlie’s Angels"),
      Specialslist2ItemModel(
          image: ImageConstant.imgThumbnailImage6, title: "Zombieland")
    ];
  }

  List<Specialslist3ItemModel> fillSpecialslist3ItemList() {
    return [
      Specialslist3ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage7,
          title: "I Kill Giants"),
      Specialslist3ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage8, title: "Disney: Togo"),
      Specialslist3ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage9,
          title: "Angel has Fallen"),
      Specialslist3ItemModel(
          iKillGiants: ImageConstant.imgThumbnailImage10,
          title: "The Conjuring")
    ];
  }

  List<Specialslist4ItemModel> fillSpecialslist4ItemList() {
    return [
      Specialslist4ItemModel(
          lukas: ImageConstant.imgThumbnailImage11, title: "Lukas"),
      Specialslist4ItemModel(
          lukas: ImageConstant.imgThumbnailImage12, title: "Dark PhoeniX"),
      Specialslist4ItemModel(
          lukas: ImageConstant.imgThumbnailImage13,
          title: "Pirates of Caribean"),
      Specialslist4ItemModel(
          lukas: ImageConstant.imgThumbnailImage6, title: "Zombieland")
    ];
  }

  List<Specialslist5ItemModel> fillSpecialslist5ItemList() {
    return [
      Specialslist5ItemModel(
          drama: ImageConstant.imgThumbnailImage60x90, drama1: "Drama"),
      Specialslist5ItemModel(
          drama: ImageConstant.imgThumbnailImage14, drama1: "Action"),
      Specialslist5ItemModel(
          drama: ImageConstant.imgThumbnailImage15, drama1: "Thriller"),
      Specialslist5ItemModel(
          drama: ImageConstant.imgThumbnailImage16, drama1: "Drama")
    ];
  }

  List<Specialslist6ItemModel> fillSpecialslist6ItemList() {
    return [
      Specialslist6ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage,
          title: "The Perfection"),
      Specialslist6ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage140x90,
          title: "Radio Flash"),
      Specialslist6ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage1,
          title: "Turner & Hooch"),
      Specialslist6ItemModel(
          thePerfection: ImageConstant.imgThumbnailImage2,
          title: "Stranger Things")
    ];
  }
}
