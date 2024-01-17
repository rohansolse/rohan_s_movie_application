import '../../../core/app_export.dart';

/// This class is used in the [movies5_item_widget] screen.
class Movies5ItemModel {
  Movies5ItemModel({
    this.turnerHooch,
    this.title,
    this.title1,
    this.id,
  }) {
    turnerHooch = turnerHooch ?? ImageConstant.imgThumbnailImage1;
    title = title ?? "Turner & Hooch";
    title1 = title1 ?? "Sub-Title";
    id = id ?? "";
  }

  String? turnerHooch;

  String? title;

  String? title1;

  String? id;
}
