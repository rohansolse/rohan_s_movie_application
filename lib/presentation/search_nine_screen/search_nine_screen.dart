import '../search_nine_screen/widgets/searchnine_item_widget.dart';
import 'bloc/search_nine_bloc.dart';
import 'models/search_nine_model.dart';
import 'models/searchnine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_search_view.dart';

class SearchNineScreen extends StatelessWidget {
  const SearchNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchNineBloc>(
        create: (context) => SearchNineBloc(
            SearchNineState(searchNineModelObj: SearchNineModel()))
          ..add(SearchNineInitialEvent()),
        child: SearchNineScreen());
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
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          BlocSelector<SearchNineBloc, SearchNineState,
                                  TextEditingController?>(
                              selector: (state) => state.searchController,
                              builder: (context, searchController) {
                                return CustomSearchView(
                                    controller: searchController,
                                    hintText: "msg_search_for_movies".tr);
                              }),
                          SizedBox(height: 32.v),
                          _buildSearchNine(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_search".tr, margin: EdgeInsets.only(left: 16.h)),
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
  Widget _buildSearchNine(BuildContext context) {
    return BlocSelector<SearchNineBloc, SearchNineState, SearchNineModel?>(
        selector: (state) => state.searchNineModelObj,
        builder: (context, searchNineModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 177.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: searchNineModelObj?.searchnineItemList.length ?? 0,
              itemBuilder: (context, index) {
                SearchnineItemModel model =
                    searchNineModelObj?.searchnineItemList[index] ??
                        SearchnineItemModel();
                return SearchnineItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        });
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
