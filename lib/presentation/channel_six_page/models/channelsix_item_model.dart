import '../../../core/app_export.dart';

/// This class is used in the [channelsix_item_widget] screen.
class ChannelsixItemModel {
  ChannelsixItemModel({
    this.header,
    this.time,
    this.id,
  }) {
    header = header ?? "Last time we meet";
    time = time ?? "02:00 AM (EST)";
    id = id ?? "";
  }

  String? header;

  String? time;

  String? id;
}
