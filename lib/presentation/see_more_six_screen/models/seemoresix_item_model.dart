import '../../../core/app_export.dart';

/// This class is used in the [seemoresix_item_widget] screen.
class SeemoresixItemModel {
  SeemoresixItemModel({
    this.rodioflash,
    this.title,
    this.id,
  }) {
    rodioflash = rodioflash ?? ImageConstant.imgThumbnailImage140x90;
    title = title ?? "Rodioflash";
    id = id ?? "";
  }

  String? rodioflash;

  String? title;

  String? id;
}
