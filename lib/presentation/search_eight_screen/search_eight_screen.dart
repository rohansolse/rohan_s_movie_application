import 'bloc/search_eight_bloc.dart';
import 'models/search_eight_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_search_view.dart';

class SearchEightScreen extends StatelessWidget {
  const SearchEightScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchEightBloc>(
      create: (context) => SearchEightBloc(SearchEightState(
        searchEightModelObj: SearchEightModel(),
      ))
        ..add(SearchEightInitialEvent()),
      child: SearchEightScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 24.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: BlocSelector<SearchEightBloc, SearchEightState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomSearchView(
                          controller: searchController,
                          hintText: "msg_search_for_movies".tr,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Divider(),
                  SizedBox(height: 23.v),
                  Text(
                    "lbl_trending_search".tr,
                    style: CustomTextStyles.headlineSmallMedium,
                  ),
                  SizedBox(height: 20.v),
                  Divider(),
                  SizedBox(height: 17.v),
                  Text(
                    "lbl_treasure_island".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_love_in_trouble".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_hotel_de_luna".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_the_heirs".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "msg_what_s_wrong_with".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_moby_dick".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                  SizedBox(height: 19.v),
                  Text(
                    "lbl_bullet_boy".tr,
                    style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_search".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer,
          margin: EdgeInsets.only(left: 16.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgIconOnprimarycontainer24x24,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }
}
