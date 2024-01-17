import '../../../core/app_export.dart';

/// This class is used in the [searchgrid_item_widget] screen.
class SearchgridItemModel {
  SearchgridItemModel({
    this.jallikatta,
    this.title,
    this.id,
  }) {
    jallikatta = jallikatta ?? ImageConstant.imgThumbnailImage20;
    title = title ?? "Jallikatta";
    id = id ?? "";
  }

  String? jallikatta;

  String? title;

  String? id;
}
