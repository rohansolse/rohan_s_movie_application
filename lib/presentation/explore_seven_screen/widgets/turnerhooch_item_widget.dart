import '../models/turnerhooch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class TurnerhoochItemWidget extends StatelessWidget {
  TurnerhoochItemWidget(
    this.turnerhoochItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  TurnerhoochItemModel turnerhoochItemModelObj;

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
            imagePath: turnerhoochItemModelObj?.turnerHooch,
            height: 180.v,
            width: 120.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            turnerhoochItemModelObj.title!,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 3.v),
          Text(
            turnerhoochItemModelObj.title1!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
