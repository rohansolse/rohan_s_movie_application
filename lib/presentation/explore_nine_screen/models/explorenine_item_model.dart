import '../../../core/app_export.dart';

/// This class is used in the [explorenine_item_widget] screen.
class ExplorenineItemModel {
  ExplorenineItemModel({
    this.io,
    this.title,
    this.title1,
    this.id,
  }) {
    io = io ?? ImageConstant.imgThumbnailImage180x120;
    title = title ?? "IO";
    title1 = title1 ?? "No Christmas For You";
    id = id ?? "";
  }

  String? io;

  String? title;

  String? title1;

  String? id;
}
