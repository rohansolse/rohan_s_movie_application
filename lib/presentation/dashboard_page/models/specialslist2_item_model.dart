import '../../../core/app_export.dart';

/// This class is used in the [specialslist2_item_widget] screen.
class Specialslist2ItemModel {
  Specialslist2ItemModel({
    this.image,
    this.title,
    this.id,
  }) {
    image = image ?? ImageConstant.imgThumbnailImage3;
    title = title ?? "Jumanji The Next Level";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? id;
}
