import '../models/searchgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/custom_rating_bar.dart';

// ignore: must_be_immutable
class SearchgridItemWidget extends StatelessWidget {
  SearchgridItemWidget(
    this.searchgridItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  SearchgridItemModel searchgridItemModelObj;

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
            imagePath: searchgridItemModelObj?.jallikatta,
            height: 140.v,
            width: 98.h,
            radius: BorderRadius.circular(
              2.h,
            ),
          ),
          SizedBox(height: 8.v),
          CustomRatingBar(
            ignoreGestures: true,
            initialRating: 0,
          ),
          SizedBox(height: 5.v),
          Text(
            searchgridItemModelObj.title!,
            style: CustomTextStyles.bodySmallGray300,
          ),
        ],
      ),
    );
  }
}
