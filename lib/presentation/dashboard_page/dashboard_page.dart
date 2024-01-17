import '../dashboard_page/widgets/specialslist1_item_widget.dart';
import '../dashboard_page/widgets/specialslist2_item_widget.dart';
import '../dashboard_page/widgets/specialslist3_item_widget.dart';
import '../dashboard_page/widgets/specialslist4_item_widget.dart';
import '../dashboard_page/widgets/specialslist5_item_widget.dart';
import '../dashboard_page/widgets/specialslist6_item_widget.dart';
import 'bloc/dashboard_bloc.dart';
import 'models/dashboard_model.dart';
import 'models/specialslist1_item_model.dart';
import 'models/specialslist2_item_model.dart';
import 'models/specialslist3_item_model.dart';
import 'models/specialslist4_item_model.dart';
import 'models/specialslist5_item_model.dart';
import 'models/specialslist6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DashboardBloc>(
        create: (context) =>
            DashboardBloc(DashboardState(dashboardModelObj: DashboardModel()))
              ..add(DashboardInitialEvent()),
        child: DashboardPage());
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
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildHeroCard(context),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList1(context),
                              SizedBox(height: 27.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList2(context),
                              SizedBox(height: 24.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_featured".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 18.v),
                              _buildSpecialsList3(context),
                              SizedBox(height: 27.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_upcoming_movies".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList4(context),
                              SizedBox(height: 25.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_categories".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList5(context),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_special_for_you".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildSpecialsList6(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_nons".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildHeroCard(BuildContext context) {
    return SizedBox(
        height: 300.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgHeroCardImage,
              height: 300.v,
              width: 360.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 16.h, right: 205.h, bottom: 16.v),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_moonlight".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(right: 31.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("lbl_sub_label".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1)),
                              Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 8.h, top: 6.v, bottom: 6.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius:
                                          BorderRadius.circular(1.h))),
                              Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text("lbl_4_5".tr,
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSignal,
                                  height: 8.adaptSize,
                                  width: 8.adaptSize,
                                  margin: EdgeInsets.only(
                                      left: 3.h, top: 3.v, bottom: 4.v))
                            ]))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSpecialsList1(BuildContext context) {
    return SizedBox(
        height: 177.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist1ItemModel model =
                        dashboardModelObj?.specialslist1ItemList[index] ??
                            Specialslist1ItemModel();
                    return Specialslist1ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildSpecialsList2(BuildContext context) {
    return SizedBox(
        height: 185.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist2ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist2ItemModel model =
                        dashboardModelObj?.specialslist2ItemList[index] ??
                            Specialslist2ItemModel();
                    return Specialslist2ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildSpecialsList3(BuildContext context) {
    return SizedBox(
        height: 177.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist3ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist3ItemModel model =
                        dashboardModelObj?.specialslist3ItemList[index] ??
                            Specialslist3ItemModel();
                    return Specialslist3ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildSpecialsList4(BuildContext context) {
    return SizedBox(
        height: 196.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist4ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist4ItemModel model =
                        dashboardModelObj?.specialslist4ItemList[index] ??
                            Specialslist4ItemModel();
                    return Specialslist4ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildSpecialsList5(BuildContext context) {
    return SizedBox(
        height: 60.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist5ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist5ItemModel model =
                        dashboardModelObj?.specialslist5ItemList[index] ??
                            Specialslist5ItemModel();
                    return Specialslist5ItemWidget(model, onTapImgDrama: () {
                      onTapImgDrama(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildSpecialsList6(BuildContext context) {
    return SizedBox(
        height: 177.v,
        child: BlocSelector<DashboardBloc, DashboardState, DashboardModel?>(
            selector: (state) => state.dashboardModelObj,
            builder: (context, dashboardModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      dashboardModelObj?.specialslist6ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Specialslist6ItemModel model =
                        dashboardModelObj?.specialslist6ItemList[index] ??
                            Specialslist6ItemModel();
                    return Specialslist6ItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }

  /// Navigates to the seeMoreSixScreen when the action is triggered.
  onTapImgDrama(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.seeMoreSixScreen);
  }
}
