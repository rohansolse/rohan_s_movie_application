import '../models/channelsix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class ChannelsixItemWidget extends StatelessWidget {
  ChannelsixItemWidget(
    this.channelsixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChannelsixItemModel channelsixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          channelsixItemModelObj.header!,
          style: CustomTextStyles.titleMediumWhiteA700Medium,
        ),
        SizedBox(height: 9.v),
        Text(
          channelsixItemModelObj.time!,
          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
        ),
      ],
    );
  }
}
