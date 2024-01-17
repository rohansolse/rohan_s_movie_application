import '../models/exploregrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class Exploregrid1ItemWidget extends StatelessWidget {
  Exploregrid1ItemWidget(
    this.exploregrid1ItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  Exploregrid1ItemModel exploregrid1ItemModelObj;

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
            imagePath: exploregrid1ItemModelObj?.io,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            exploregrid1ItemModelObj.title!,
            style: CustomTextStyles.labelLargeWhiteA700,
          ),
          SizedBox(height: 2.v),
          Text(
            exploregrid1ItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
