import '../models/specials2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

// ignore: must_be_immutable
class Specials2ItemWidget extends StatelessWidget {
  Specials2ItemWidget(
    this.specials2ItemModelObj, {
    Key? key,
    this.onTapImgDrama,
  }) : super(
          key: key,
        );

  Specials2ItemModel specials2ItemModelObj;

  VoidCallback? onTapImgDrama;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.v,
      width: 90.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: specials2ItemModelObj?.drama,
            height: 60.v,
            width: 90.h,
            radius: BorderRadius.circular(
              2.h,
            ),
            alignment: Alignment.center,
            onTap: () {
              onTapImgDrama!.call();
            },
          ),
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0.87,
              child: Text(
                specials2ItemModelObj.drama1!,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
