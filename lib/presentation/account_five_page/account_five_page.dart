import 'bloc/account_five_bloc.dart';
import 'models/account_five_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class AccountFivePage extends StatelessWidget {
  const AccountFivePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountFiveBloc>(
      create: (context) => AccountFiveBloc(AccountFiveState(
        accountFiveModelObj: AccountFiveModel(),
      ))
        ..add(AccountFiveInitialEvent()),
      child: AccountFivePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountFiveBloc, AccountFiveState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 13.v),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgLikedMoviesIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_liked_movies".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgNotificationIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              bottom: 3.v,
                            ),
                            child: Text(
                              "lbl_notification".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMySubscription,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "msg_my_subscription".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTransactionHistory,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "msg_transaction_history".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgProfileSettings,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "msg_profile_settings".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgWatchHistoryIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "lbl_watch_history".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 24.v),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFollowingIcon,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 3.v,
                            ),
                            child: Text(
                              "lbl_following".tr,
                              style: CustomTextStyles.bodyLargeWhiteA700_1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 116.v),
                      CustomElevatedButton(
                        height: 50.v,
                        text: "lbl_logout".tr,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 54.v,
      title: AppbarTitle(
        text: "lbl_account".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIcon1,
          margin: EdgeInsets.fromLTRB(16.h, 19.v, 16.h, 17.v),
        ),
      ],
    );
  }
}
