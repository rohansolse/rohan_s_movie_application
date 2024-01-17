import '../models/seemorefive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class SeemorefiveItemWidget extends StatelessWidget {
  SeemorefiveItemWidget(
    this.seemorefiveItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SeemorefiveItemModel seemorefiveItemModelObj;

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
            imagePath: seemorefiveItemModelObj?.darkTower,
            height: 140.v,
            width: 98.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            seemorefiveItemModelObj.title!,
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
