import '../channel_four_screen/widgets/channelfour_item_widget.dart';
import 'bloc/channel_four_bloc.dart';
import 'models/channel_four_model.dart';
import 'models/channelfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class ChannelFourScreen extends StatelessWidget {
  const ChannelFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChannelFourBloc>(
        create: (context) => ChannelFourBloc(
            ChannelFourState(channelFourModelObj: ChannelFourModel()))
          ..add(ChannelFourInitialEvent()),
        child: ChannelFourScreen());
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
                        child: Column(children: [
                          _buildVideoPlayer(context),
                          SizedBox(height: 24.v),
                          _buildChannelFour(context)
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
  Widget _buildChannelFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child:
            BlocSelector<ChannelFourBloc, ChannelFourState, ChannelFourModel?>(
                selector: (state) => state.channelFourModelObj,
                builder: (context, channelFourModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0.v),
                            child: SizedBox(
                                width: 328.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color: theme
                                        .colorScheme.onSecondaryContainer)));
                      },
                      itemCount:
                          channelFourModelObj?.channelfourItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ChannelfourItemModel model =
                            channelFourModelObj?.channelfourItemList[index] ??
                                ChannelfourItemModel();
                        return ChannelfourItemWidget(model);
                      });
                }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
