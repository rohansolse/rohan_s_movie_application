import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "splash screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "login ".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Dashboard - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.dashboardContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "See More Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seeMoreFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "See More Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.seeMoreSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "See More Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.seeMoreSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Nine".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Ten".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Eleven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Twelve".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page Eight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.exploreSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.exploreSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.exploreTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Explore Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.exploreNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Channel Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.channelFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Channel Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.channelFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Seven".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchSevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Ten".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Six".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Eight".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Search Nine".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.searchNineScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
