import '../../../core/app_export.dart';

/// This class is used in the [specialslist4_item_widget] screen.
class Specialslist4ItemModel {
  Specialslist4ItemModel({
    this.lukas,
    this.title,
    this.id,
  }) {
    lukas = lukas ?? ImageConstant.imgThumbnailImage11;
    title = title ?? "Lukas";
    id = id ?? "";
  }

  String? lukas;

  String? title;

  String? id;
}
