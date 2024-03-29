import '../detail_page_twelve_screen/widgets/movielist_item_widget.dart';
import 'bloc/detail_page_twelve_bloc.dart';
import 'models/detail_page_twelve_model.dart';
import 'models/movielist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_elevated_button.dart';
import 'package:rohan_s_movie_application/widgets/custom_icon_button.dart';

class DetailPageTwelveScreen extends StatelessWidget {
  const DetailPageTwelveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageTwelveBloc>(
        create: (context) => DetailPageTwelveBloc(DetailPageTwelveState(
            detailPageTwelveModelObj: DetailPageTwelveModel()))
          ..add(DetailPageTwelveInitialEvent()),
        child: DetailPageTwelveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildVideoPlayer(context),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_details".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 11.v),
                              Container(
                                  width: 315.h,
                                  margin:
                                      EdgeInsets.only(left: 16.h, right: 28.h),
                                  child: Text("msg_fertility_and_desolation".tr,
                                      maxLines: 8,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(height: 1.50))),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 1.v),
                                        child: Text("lbl_director".tr,
                                            style: theme.textTheme.bodySmall)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 43.h),
                                        child: Text("msg_anna_boden_ryan".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray300))
                                  ])),
                              SizedBox(height: 9.v),
                              _buildCastSection(context),
                              SizedBox(height: 15.v),
                              Divider(),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_you_might_also_like".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildMovieList(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildVideoPlayer(BuildContext context) {
    return SizedBox(
        height: 220.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbnailImage220x360,
              height: 220.v,
              width: 360.h,
              radius: BorderRadius.circular(2.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                  decoration: AppDecoration.gradientGrayToGray,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 79.v),
                        Text("lbl_captain_marvel".tr,
                            style: CustomTextStyles.titleMediumWhiteA700),
                        SizedBox(height: 13.v),
                        Row(children: [
                          Text("lbl_2019".tr, style: theme.textTheme.bodySmall),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("lbl_action".tr,
                                  style: theme.textTheme.bodySmall)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h, top: 1.v),
                              child: Text("lbl_4_5".tr,
                                  style: theme.textTheme.bodySmall)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 4.v, bottom: 4.v)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("lbl_1_hr_49min".tr,
                                  style: theme.textTheme.bodySmall))
                        ]),
                        SizedBox(height: 12.v),
                        Row(children: [
                          CustomElevatedButton(
                              width: 124.h,
                              text: "lbl_watch_now".tr,
                              leftIcon: Container(
                                  margin: EdgeInsets.only(right: 4.h),
                                  child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgIconOnprimarycontainer16x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize)),
                              onPressed: () {
                                onTapWatchNow(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: CustomIconButton(
                                  height: 36.adaptSize,
                                  width: 36.adaptSize,
                                  padding: EdgeInsets.all(10.h),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgSearchWhiteA700)))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildCastSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 42.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 20.v),
              child: Text("lbl_cast".tr, style: theme.textTheme.bodySmall)),
          Expanded(
              child: Container(
                  width: 215.h,
                  margin: EdgeInsets.only(left: 61.h),
                  child: Text("msg_brie_larson_samuel".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallGray300
                          .copyWith(height: 1.50))))
        ]));
  }

  /// Section Widget
  Widget _buildMovieList(BuildContext context) {
    return SizedBox(
        height: 243.v,
        child: BlocSelector<DetailPageTwelveBloc, DetailPageTwelveState,
                DetailPageTwelveModel?>(
            selector: (state) => state.detailPageTwelveModelObj,
            builder: (context, detailPageTwelveModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      detailPageTwelveModelObj?.movielistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    MovielistItemModel model =
                        detailPageTwelveModelObj?.movielistItemList[index] ??
                            MovielistItemModel();
                    return MovielistItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  onTapWatchNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
  }
}
