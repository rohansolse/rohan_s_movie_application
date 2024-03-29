import '../detail_page_ten_screen/widgets/movies2_item_widget.dart';
import 'bloc/detail_page_ten_bloc.dart';
import 'models/detail_page_ten_model.dart';
import 'models/movies2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_elevated_button.dart';
import 'package:rohan_s_movie_application/widgets/custom_icon_button.dart';

class DetailPageTenScreen extends StatelessWidget {
  const DetailPageTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageTenBloc>(
        create: (context) => DetailPageTenBloc(
            DetailPageTenState(detailPageTenModelObj: DetailPageTenModel()))
          ..add(DetailPageTenInitialEvent()),
        child: DetailPageTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgThumbnailImage28,
                              height: 140.v,
                              width: 90.h,
                              radius: BorderRadius.circular(2.h),
                              onTap: () {
                                onTapImgThumbnailImage(context);
                              }),
                          SizedBox(height: 28.v),
                          Text("lbl_captain_marvel".tr,
                              style: theme.textTheme.headlineSmall),
                          SizedBox(height: 7.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_2019".tr,
                                    style: theme.textTheme.bodySmall),
                                Container(
                                    height: 3.adaptSize,
                                    width: 3.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 8.h, top: 6.v, bottom: 6.v),
                                    decoration: BoxDecoration(
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
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
                                        color: theme
                                            .colorScheme.onPrimaryContainer,
                                        borderRadius:
                                            BorderRadius.circular(1.h))),
                                Container(
                                    width: 36.h,
                                    margin: EdgeInsets.only(left: 8.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("lbl_4_5".tr,
                                              style: theme.textTheme.bodySmall),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgSignal,
                                              height: 8.adaptSize,
                                              width: 8.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 3.h,
                                                  top: 2.v,
                                                  bottom: 4.v))
                                        ]))
                              ]),
                          SizedBox(height: 5.v),
                          Text("lbl_1_hr_49min".tr,
                              style: theme.textTheme.bodySmall),
                          SizedBox(height: 26.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    width: 111.h,
                                    text: "lbl_play_now".tr,
                                    leftIcon: Container(
                                        margin: EdgeInsets.only(right: 4.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconOnprimarycontainer16x16,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize)),
                                    onPressed: () {
                                      onTapPlayNow(context);
                                    }),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSearchWhiteA700))),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconWhiteA700))),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        padding: EdgeInsets.all(10.h),
                                        child: CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconWhiteA70036x36)))
                              ]),
                          SizedBox(height: 25.v),
                          SizedBox(
                              width: 325.h,
                              child: ReadMoreText("msg_set_in_the_1990s".tr,
                                  trimLines: 3,
                                  colorClickableText: theme.colorScheme.primary,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: "lbl_read_more".tr,
                                  moreStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.50),
                                  lessStyle: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_more_info".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
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
                                  ]))),
                          SizedBox(height: 9.v),
                          _buildFrameFortySix(context),
                          SizedBox(height: 23.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_you_might_also_like".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold))),
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildFrameFortySix(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
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
            ])));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 243.v,
        child: BlocSelector<DetailPageTenBloc, DetailPageTenState,
                DetailPageTenModel?>(
            selector: (state) => state.detailPageTenModelObj,
            builder: (context, detailPageTenModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: detailPageTenModelObj?.movies2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Movies2ItemModel model =
                        detailPageTenModelObj?.movies2ItemList[index] ??
                            Movies2ItemModel();
                    return Movies2ItemWidget(model, onTapMovieCard: () {
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

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapImgThumbnailImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the channelFourScreen when the action is triggered.
  onTapPlayNow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.channelFourScreen,
    );
  }
}
