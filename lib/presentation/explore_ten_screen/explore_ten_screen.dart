import 'bloc/explore_ten_bloc.dart';
import 'models/explore_ten_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class ExploreTenScreen extends StatelessWidget {
  const ExploreTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreTenBloc>(
        create: (context) => ExploreTenBloc(
            ExploreTenState(exploreTenModelObj: ExploreTenModel()))
          ..add(ExploreTenInitialEvent()),
        child: ExploreTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExploreTenBloc, ExploreTenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: SizeUtils.width,
                  child: SingleChildScrollView(
                      padding: EdgeInsets.only(top: 34.v),
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Opacity(
                                    opacity: 0.87,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("lbl_trending_movies".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA700))),
                                SizedBox(height: 16.v),
                                _buildTrending(context),
                                SizedBox(height: 26.v),
                                Opacity(
                                    opacity: 0.87,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("lbl_trending_movies".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA700))),
                                SizedBox(height: 16.v),
                                _buildMovieCard1(context),
                                SizedBox(height: 26.v),
                                Opacity(
                                    opacity: 0.87,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: Text("lbl_trending_movies".tr,
                                            style: CustomTextStyles
                                                .titleSmallWhiteA700))),
                                SizedBox(height: 16.v),
                                _buildMovieCard2(context)
                              ]))))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_explore".tr, margin: EdgeInsets.only(left: 16.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
              margin: EdgeInsets.symmetric(horizontal: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildTrending(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard(context);
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage12,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: _buildRatings(context,
                                      ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard1(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildMovieCard1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard2(context);
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage140x90,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: _buildRatings(context,
                                      ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard3(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Section Widget
  Widget _buildMovieCard2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard4(context);
                  },
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgThumbnailImage31,
                            height: 160.v,
                            width: 312.h,
                            radius: BorderRadius.circular(2.h)),
                        SizedBox(height: 9.v),
                        Text("lbl_dark_phoenix2".tr,
                            style: CustomTextStyles.titleSmallMedium),
                        SizedBox(height: 3.v),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: _buildRatings(context,
                                      ratingText: "lbl_4_5".tr))
                            ])
                      ]))),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    onTapMovieCard5(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgThumbnailImage160x312,
                                height: 160.v,
                                width: 312.h,
                                radius: BorderRadius.circular(2.h)),
                            SizedBox(height: 9.v),
                            Text("lbl_label".tr,
                                style: CustomTextStyles.titleSmallMedium),
                            SizedBox(height: 2.v),
                            Row(children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: theme.textTheme.bodySmall)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 7.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color:
                                          theme.colorScheme.onPrimaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: theme.textTheme.bodySmall)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 5.v, bottom: 5.v))
                            ])
                          ]))))
        ]));
  }

  /// Common widget
  Widget _buildRatings(
    BuildContext context, {
    required String ratingText,
  }) {
    return SizedBox(
        width: 36.h,
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(ratingText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.onPrimaryContainer)),
          CustomImageView(
              imagePath: ImageConstant.imgSignal,
              height: 8.adaptSize,
              width: 8.adaptSize,
              margin: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 4.v))
        ]));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard2(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard3(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard4(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard5(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
