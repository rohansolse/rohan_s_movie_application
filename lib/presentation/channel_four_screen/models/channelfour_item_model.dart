import '../../../core/app_export.dart';

/// This class is used in the [channelfour_item_widget] screen.
class ChannelfourItemModel {
  ChannelfourItemModel({
    this.ktv,
    this.ktv1,
    this.id,
  }) {
    ktv = ktv ?? ImageConstant.imgBackgroundImage;
    ktv1 = ktv1 ?? "K TV";
    id = id ?? "";
  }

  String? ktv;

  String? ktv1;

  String? id;
}
