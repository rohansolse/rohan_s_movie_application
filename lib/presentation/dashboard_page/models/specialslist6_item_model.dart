import '../../../core/app_export.dart';

/// This class is used in the [specialslist6_item_widget] screen.
class Specialslist6ItemModel {
  Specialslist6ItemModel({
    this.thePerfection,
    this.title,
    this.id,
  }) {
    thePerfection = thePerfection ?? ImageConstant.imgThumbnailImage;
    title = title ?? "The Perfection";
    id = id ?? "";
  }

  String? thePerfection;

  String? title;

  String? id;
}
