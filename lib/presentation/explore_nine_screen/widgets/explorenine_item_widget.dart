import '../models/explorenine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class ExplorenineItemWidget extends StatelessWidget {
  ExplorenineItemWidget(
    this.explorenineItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  ExplorenineItemModel explorenineItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMovieCard!.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: explorenineItemModelObj?.io,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            explorenineItemModelObj.title!,
            style: CustomTextStyles.labelLargeWhiteA700,
          ),
          SizedBox(height: 2.v),
          Text(
            explorenineItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
