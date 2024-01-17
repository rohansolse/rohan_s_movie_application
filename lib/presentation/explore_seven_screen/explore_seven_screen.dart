import '../explore_seven_screen/widgets/io_item_widget.dart';
import '../explore_seven_screen/widgets/specials_item_widget.dart';
import '../explore_seven_screen/widgets/turnerhooch_item_widget.dart';
import 'bloc/explore_seven_bloc.dart';
import 'models/explore_seven_model.dart';
import 'models/io_item_model.dart';
import 'models/specials_item_model.dart';
import 'models/turnerhooch_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class ExploreSevenScreen extends StatelessWidget {
  const ExploreSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreSevenBloc>(
        create: (context) => ExploreSevenBloc(
            ExploreSevenState(exploreSevenModelObj: ExploreSevenModel()))
          ..add(ExploreSevenInitialEvent()),
        child: ExploreSevenScreen());
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
                                  actionText: "lbl_drama".tr,
                                  moreText: "lbl_more".tr)),
                          SizedBox(height: 17.v),
                          _buildIo(context),
                          SizedBox(height: 26.v),
                          Padding(
                              padding: EdgeInsets.only(left: 12.h, right: 20.h),
                              child: _buildFrameSixty(context,
                                  actionText: "lbl_action".tr,
                                  moreText: "lbl_more".tr)),
                          SizedBox(height: 17.v),
                          _buildTurnerHooch(context)
                        ]))))));
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
  Widget _buildSpecials(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                ExploreSevenModel?>(
            selector: (state) => state.exploreSevenModelObj,
            builder: (context, exploreSevenModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: exploreSevenModelObj?.specialsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SpecialsItemModel model =
                        exploreSevenModelObj?.specialsItemList[index] ??
                            SpecialsItemModel();
                    return SpecialsItemWidget(model, onTapImgDrama: () {
                      onTapImgDrama(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildIo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                ExploreSevenModel?>(
            selector: (state) => state.exploreSevenModelObj,
            builder: (context, exploreSevenModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 223.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: exploreSevenModelObj?.ioItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    IoItemModel model =
                        exploreSevenModelObj?.ioItemList[index] ??
                            IoItemModel();
                    return IoItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildTurnerHooch(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: BlocSelector<ExploreSevenBloc, ExploreSevenState,
                ExploreSevenModel?>(
            selector: (state) => state.exploreSevenModelObj,
            builder: (context, exploreSevenModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 223.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:
                      exploreSevenModelObj?.turnerhoochItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    TurnerhoochItemModel model =
                        exploreSevenModelObj?.turnerhoochItemList[index] ??
                            TurnerhoochItemModel();
                    return TurnerhoochItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Common widget
  Widget _buildFrameSixty(
    BuildContext context, {
    required String actionText,
    required String moreText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(actionText,
          style:
              theme.textTheme.titleSmall!.copyWith(color: appTheme.whiteA700)),
      Spacer(),
      Text(moreText,
          style: CustomTextStyles.bodySmallWhiteA700_1
              .copyWith(color: appTheme.whiteA700)),
      CustomImageView(
          imagePath: ImageConstant.imgIconPrimary,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 5.h))
    ]);
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.detailPageSevenScreen);
  }

  /// Navigates to the seeMoreFiveScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.seeMoreFiveScreen,
    );
  }
}
