import '../../../core/app_export.dart';

/// This class is used in the [specialslist5_item_widget] screen.
class Specialslist5ItemModel {
  Specialslist5ItemModel({
    this.drama,
    this.drama1,
    this.id,
  }) {
    drama = drama ?? ImageConstant.imgThumbnailImage60x90;
    drama1 = drama1 ?? "Drama";
    id = id ?? "";
  }

  String? drama;

  String? drama1;

  String? id;
}
