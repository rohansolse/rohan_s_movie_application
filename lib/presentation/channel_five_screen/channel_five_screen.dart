import '../channel_five_screen/widgets/movies5_item_widget.dart';
import 'bloc/channel_five_bloc.dart';
import 'models/channel_five_model.dart';
import 'models/movies5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class ChannelFiveScreen extends StatelessWidget {
  const ChannelFiveScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChannelFiveBloc>(
        create: (context) => ChannelFiveBloc(
            ChannelFiveState(channelFiveModelObj: ChannelFiveModel()))
          ..add(ChannelFiveInitialEvent()),
        child: ChannelFiveScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 24.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildVideoPlayer(context),
                              SizedBox(height: 18.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_the_last_black_man".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA70018)),
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
                              _buildFrameFortySix(context),
                              SizedBox(height: 24.v),
                              _buildFrameSixty(context),
                              SizedBox(height: 17.v),
                              _buildMovies(context)
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
        title: AppbarTitle(
            text: "lbl_live_channel".tr, margin: EdgeInsets.only(left: 12.h)),
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
  Widget _buildVideoPlayer(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgThumbnailImage180x360,
              height: 180.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 8.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgIconWhiteA70032x32,
                        height: 32.adaptSize,
                        width: 32.adaptSize),
                    SizedBox(height: 48.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgIconOnprimarycontainer18x18,
                              height: 18.adaptSize,
                              width: 18.adaptSize),
                          CustomImageView(
                              imagePath: ImageConstant.imgIcon18x18,
                              height: 18.adaptSize,
                              width: 18.adaptSize),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.v),
                              child: Container(
                                  height: 4.v,
                                  width: 240.h,
                                  decoration:
                                      BoxDecoration(color: appTheme.whiteA700),
                                  child: ClipRRect(
                                      child: LinearProgressIndicator(
                                          value: 0.57,
                                          backgroundColor: appTheme.whiteA700,
                                          valueColor: AlwaysStoppedAnimation<
                                                  Color>(
                                              theme.colorScheme.primary))))),
                          CustomImageView(
                              imagePath: ImageConstant.imgIcon1,
                              height: 18.adaptSize,
                              width: 18.adaptSize),
                          CustomImageView(
                              imagePath: ImageConstant.imgIcon2,
                              height: 18.adaptSize,
                              width: 18.adaptSize)
                        ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
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
  Widget _buildFrameSixty(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("lbl_special_for_you2".tr,
                  style: theme.textTheme.titleSmall),
              Spacer(),
              Text("lbl_more".tr, style: CustomTextStyles.bodySmallWhiteA700_1),
              CustomImageView(
                  imagePath: ImageConstant.imgIconPrimary,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.only(left: 5.h))
            ])));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 223.v,
        child:
            BlocSelector<ChannelFiveBloc, ChannelFiveState, ChannelFiveModel?>(
                selector: (state) => state.channelFiveModelObj,
                builder: (context, channelFiveModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 16.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount:
                          channelFiveModelObj?.movies5ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Movies5ItemModel model =
                            channelFiveModelObj?.movies5ItemList[index] ??
                                Movies5ItemModel();
                        return Movies5ItemWidget(model, onTapMovieCard: () {
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
}
