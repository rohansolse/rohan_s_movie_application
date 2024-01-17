import '../explore_nine_screen/widgets/explorenine_item_widget.dart';
import '../explore_nine_screen/widgets/specials2_item_widget.dart';
import 'bloc/explore_nine_bloc.dart';
import 'models/explore_nine_model.dart';
import 'models/explorenine_item_model.dart';
import 'models/specials2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title_searchview.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class ExploreNineScreen extends StatelessWidget {
  const ExploreNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreNineBloc>(
        create: (context) => ExploreNineBloc(
            ExploreNineState(exploreNineModelObj: ExploreNineModel()))
          ..add(ExploreNineInitialEvent()),
        child: ExploreNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 34.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFrameSixty(context,
                                  dynamicText: "lbl_discover_movie".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 20.v),
                          _buildHeroCard(context),
                          SizedBox(height: 26.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_categories_you_like".tr,
                                      style: theme.textTheme.titleSmall))),
                          SizedBox(height: 17.v),
                          _buildSpecials(context),
                          SizedBox(height: 25.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildFrameSixty(context,
                                  dynamicText: "lbl_drama".tr,
                                  dynamicText1: "lbl_more".tr)),
                          SizedBox(height: 17.v),
                          _buildExploreNine(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: BlocSelector<ExploreNineBloc, ExploreNineState,
                TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return AppbarTitleSearchview(
                  margin: EdgeInsets.only(left: 12.h),
                  hintText: "lbl_search_movie".tr,
                  controller: searchController);
            }));
  }

  /// Section Widget
  Widget _buildHeroCard(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: 328.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage1,
              height: 300.v,
              width: 328.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 173.h, bottom: 16.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_moonlight".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        Row(children: [
                          Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text("lbl_sub_label".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          Container(
                              height: 3.adaptSize,
                              width: 3.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 6.v, bottom: 6.v),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(1.h))),
                          Padding(
                              padding: EdgeInsets.only(left: 8.h),
                              child: Text("lbl_4_5".tr,
                                  style:
                                      CustomTextStyles.bodySmallWhiteA700_1)),
                          CustomImageView(
                              imagePath: ImageConstant.imgSignal,
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 3.h, top: 3.v, bottom: 4.v))
                        ])
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSpecials(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child:
            BlocSelector<ExploreNineBloc, ExploreNineState, ExploreNineModel?>(
                selector: (state) => state.exploreNineModelObj,
                builder: (context, exploreNineModelObj) {
                  return ListView.separated(
                      padding: EdgeInsets.only(left: 16.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 16.h);
                      },
                      itemCount:
                          exploreNineModelObj?.specials2ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Specials2ItemModel model =
                            exploreNineModelObj?.specials2ItemList[index] ??
                                Specials2ItemModel();
                        return Specials2ItemWidget(model, onTapImgDrama: () {
                          onTapImgDrama(context);
                        });
                      });
                }));
  }

  /// Section Widget
  Widget _buildExploreNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child:
            BlocSelector<ExploreNineBloc, ExploreNineState, ExploreNineModel?>(
                selector: (state) => state.exploreNineModelObj,
                builder: (context, exploreNineModelObj) {
                  return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 223.v,
                          crossAxisCount: 3,
                          mainAxisSpacing: 16.h,
                          crossAxisSpacing: 16.h),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          exploreNineModelObj?.explorenineItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ExplorenineItemModel model =
                            exploreNineModelObj?.explorenineItemList[index] ??
                                ExplorenineItemModel();
                        return ExplorenineItemWidget(model, onTapMovieCard: () {
                          onTapMovieCard(context);
                        });
                      });
                }));
  }

  /// Common widget
  Widget _buildFrameSixty(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(dynamicText,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(dynamicText1,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.seeMoreSixScreen);
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
