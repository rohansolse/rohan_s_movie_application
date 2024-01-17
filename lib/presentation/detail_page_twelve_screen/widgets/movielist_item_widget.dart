import '../models/movielist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class MovielistItemWidget extends StatelessWidget {
  MovielistItemWidget(
    this.movielistItemModelObj, {
    Key? key,
    this.onTapMovieCard,
  }) : super(
          key: key,
        );

  MovielistItemModel movielistItemModelObj;

  VoidCallback? onTapMovieCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: GestureDetector(
        onTap: () {
          onTapMovieCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: movielistItemModelObj?.iONetflix,
              height: 180.v,
              width: 120.h,
              radius: BorderRadius.circular(
                2.h,
              ),
            ),
            SizedBox(height: 9.v),
            Text(
              movielistItemModelObj.title!,
              style: theme.textTheme.labelLarge,
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 120.h,
              child: Text(
                movielistItemModelObj.title1!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall!.copyWith(
                  height: 1.50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
