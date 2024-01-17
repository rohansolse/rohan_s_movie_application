import '../search_ten_screen/widgets/searchten_item_widget.dart';
import 'bloc/search_ten_bloc.dart';
import 'models/search_ten_model.dart';
import 'models/searchten_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_checkbox_button.dart';

class SearchTenScreen extends StatelessWidget {
  const SearchTenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTenBloc>(
        create: (context) =>
            SearchTenBloc(SearchTenState(searchTenModelObj: SearchTenModel()))
              ..add(SearchTenInitialEvent()),
        child: SearchTenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 27.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconPrimary20x20,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(bottom: 2.v)),
                                Padding(
                                    padding: EdgeInsets.only(left: 8.h),
                                    child: Text("lbl_trending_search".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018))
                              ]),
                              SizedBox(height: 26.v),
                              Text("lbl_love_in_trouble".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("lbl_hotel_de_luna".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 20.v),
                              Text("lbl_the_heirs".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 21.v),
                              Text("msg_what_s_wrong_with".tr,
                                  style: CustomTextStyles.bodyMediumGray300),
                              SizedBox(height: 29.v),
                              _buildPopularSearch(context),
                              SizedBox(height: 16.v),
                              _buildSearchTen(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title:
            BlocSelector<SearchTenBloc, SearchTenState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return AppbarTitleSearchviewOne(
                      hintText: "msg_search_for_movies".tr,
                      controller: searchController);
                }));
  }

  /// Section Widget
  Widget _buildPopularSearch(BuildContext context) {
    return BlocSelector<SearchTenBloc, SearchTenState, bool?>(
        selector: (state) => state.popularSearch,
        builder: (context, popularSearch) {
          return CustomCheckboxButton(
              text: "lbl_popular_search".tr,
              value: popularSearch,
              onChange: (value) {
                context
                    .read<SearchTenBloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildSearchTen(BuildContext context) {
    return SizedBox(
        height: 176.v,
        child: BlocSelector<SearchTenBloc, SearchTenState, SearchTenModel?>(
            selector: (state) => state.searchTenModelObj,
            builder: (context, searchTenModelObj) {
              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: searchTenModelObj?.searchtenItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    SearchtenItemModel model =
                        searchTenModelObj?.searchtenItemList[index] ??
                            SearchtenItemModel();
                    return SearchtenItemWidget(model, onTapMovieCard: () {
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
}
