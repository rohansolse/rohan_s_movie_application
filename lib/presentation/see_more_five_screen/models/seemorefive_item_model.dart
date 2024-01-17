import '../../../core/app_export.dart';

/// This class is used in the [seemorefive_item_widget] screen.
class SeemorefiveItemModel {
  SeemorefiveItemModel({
    this.darkTower,
    this.title,
    this.id,
  }) {
    darkTower = darkTower ?? ImageConstant.imgThumbnailImage140x98;
    title = title ?? "Dark Tower";
    id = id ?? "";
  }

  String? darkTower;

  String? title;

  String? id;
}
