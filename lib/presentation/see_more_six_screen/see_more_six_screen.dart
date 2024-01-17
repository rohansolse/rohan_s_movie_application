import '../see_more_six_screen/widgets/seemoresix_item_widget.dart';
import 'bloc/see_more_six_bloc.dart';
import 'models/see_more_six_model.dart';
import 'models/seemoresix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class SeeMoreSixScreen extends StatelessWidget {
  const SeeMoreSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SeeMoreSixBloc>(
        create: (context) => SeeMoreSixBloc(
            SeeMoreSixState(seeMoreSixModelObj: SeeMoreSixModel()))
          ..add(SeeMoreSixInitialEvent()),
        child: SeeMoreSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10.v),
                      Text("lbl_action_movies".tr,
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 20.v),
                      _buildSeeMoreSix(context)
                    ]))));
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
            text: "lbl_action".tr, margin: EdgeInsets.only(left: 12.h)),
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
  Widget _buildSeeMoreSix(BuildContext context) {
    return Expanded(
        child: BlocSelector<SeeMoreSixBloc, SeeMoreSixState, SeeMoreSixModel?>(
            selector: (state) => state.seeMoreSixModelObj,
            builder: (context, seeMoreSixModelObj) {
              return GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 165.v,
                      crossAxisCount: 3,
                      mainAxisSpacing: 16.h,
                      crossAxisSpacing: 16.h),
                  physics: BouncingScrollPhysics(),
                  itemCount: seeMoreSixModelObj?.seemoresixItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SeemoresixItemModel model =
                        seeMoreSixModelObj?.seemoresixItemList[index] ??
                            SeemoresixItemModel();
                    return SeemoresixItemWidget(model, onTapMovieCard: () {
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
