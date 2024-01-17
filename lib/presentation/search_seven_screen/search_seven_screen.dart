import '../search_seven_screen/widgets/chipview2_item_widget.dart';
import '../search_seven_screen/widgets/searchgrid_item_widget.dart';
import 'bloc/search_seven_bloc.dart';
import 'models/chipview2_item_model.dart';
import 'models/search_seven_model.dart';
import 'models/searchgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/custom_search_view.dart';

class SearchSevenScreen extends StatelessWidget {
  const SearchSevenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSevenBloc>(
        create: (context) => SearchSevenBloc(
            SearchSevenState(searchSevenModelObj: SearchSevenModel()))
          ..add(SearchSevenInitialEvent()),
        child: SearchSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 118.v),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BlocSelector<
                                            SearchSevenBloc,
                                            SearchSevenState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.searchController,
                                        builder: (context, searchController) {
                                          return CustomSearchView(
                                              controller: searchController,
                                              hintText: "lbl_love".tr);
                                        }),
                                    SizedBox(height: 14.v),
                                    Text("msg_search_result_for".tr,
                                        style: CustomTextStyles
                                            .titleMediumWhiteA70018),
                                    SizedBox(height: 29.v),
                                    Text("lbl_movies_6".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 11.v),
                                    _buildSearchGrid(context),
                                    SizedBox(height: 30.v),
                                    Text("lbl_cast_4".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    _buildChipView(context),
                                    SizedBox(height: 37.v),
                                    Text("lbl_categories_1".tr,
                                        style: theme.textTheme.titleSmall),
                                    SizedBox(height: 17.v),
                                    SizedBox(
                                        height: 60.v,
                                        width: 90.h,
                                        child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgThumbnailImage33,
                                                  height: 60.v,
                                                  width: 90.h,
                                                  radius: BorderRadius.circular(
                                                      2.h),
                                                  alignment: Alignment.center),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Opacity(
                                                      opacity: 0.87,
                                                      child: Text("lbl_love".tr,
                                                          style: theme.textTheme
                                                              .bodyMedium)))
                                            ]))
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSearchGrid(BuildContext context) {
    return BlocSelector<SearchSevenBloc, SearchSevenState, SearchSevenModel?>(
        selector: (state) => state.searchSevenModelObj,
        builder: (context, searchSevenModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 177.v,
                  crossAxisCount: 3,
                  mainAxisSpacing: 16.h,
                  crossAxisSpacing: 16.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: searchSevenModelObj?.searchgridItemList.length ?? 0,
              itemBuilder: (context, index) {
                SearchgridItemModel model =
                    searchSevenModelObj?.searchgridItemList[index] ??
                        SearchgridItemModel();
                return SearchgridItemWidget(model, onTapMovieCard: () {
                  onTapMovieCard(context);
                });
              });
        });
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return BlocSelector<SearchSevenBloc, SearchSevenState, SearchSevenModel?>(
        selector: (state) => state.searchSevenModelObj,
        builder: (context, searchSevenModelObj) {
          return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                  searchSevenModelObj?.chipview2ItemList.length ?? 0, (index) {
                Chipview2ItemModel model =
                    searchSevenModelObj?.chipview2ItemList[index] ??
                        Chipview2ItemModel();
                return Chipview2ItemWidget(model, onSelectedChipView: (value) {
                  context.read<SearchSevenBloc>().add(
                      UpdateChipViewEvent(index: index, isSelected: value));
                });
              }));
        });
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
