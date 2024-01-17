import '../../../core/app_export.dart';

/// This class is used in the [specialslist3_item_widget] screen.
class Specialslist3ItemModel {
  Specialslist3ItemModel({
    this.iKillGiants,
    this.title,
    this.id,
  }) {
    iKillGiants = iKillGiants ?? ImageConstant.imgThumbnailImage7;
    title = title ?? "I Kill Giants";
    id = id ?? "";
  }

  String? iKillGiants;

  String? title;

  String? id;
}
