import '../search_six_screen/widgets/movies6_item_widget.dart';
import '../search_six_screen/widgets/movies7_item_widget.dart';
import '../search_six_screen/widgets/movieslist_item_widget.dart';
import 'bloc/search_six_bloc.dart';
import 'models/movies6_item_model.dart';
import 'models/movies7_item_model.dart';
import 'models/movieslist_item_model.dart';
import 'models/search_six_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_title_searchview_one.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class SearchSixScreen extends StatelessWidget {
  const SearchSixScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchSixBloc>(
        create: (context) =>
            SearchSixBloc(SearchSixState(searchSixModelObj: SearchSixModel()))
              ..add(SearchSixInitialEvent()),
        child: SearchSixScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 18.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_search_result_for2".tr,
                                      style: CustomTextStyles
                                          .titleMediumWhiteA70018)),
                              SizedBox(height: 28.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("lbl_movies".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 18.v),
                              _buildMoviesList(context),
                              SizedBox(height: 26.v),
                              _buildNinetyEightColumn(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        centerTitle: true,
        title:
            BlocSelector<SearchSixBloc, SearchSixState, TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return AppbarTitleSearchviewOne(
                      hintText: "lbl_love".tr, controller: searchController);
                }));
  }

  /// Section Widget
  Widget _buildMoviesList(BuildContext context) {
    return SizedBox(
        height: 223.v,
        child: BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
            selector: (state) => state.searchSixModelObj,
            builder: (context, searchSixModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: searchSixModelObj?.movieslistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    MovieslistItemModel model =
                        searchSixModelObj?.movieslistItemList[index] ??
                            MovieslistItemModel();
                    return MovieslistItemWidget(model, onTapMovieCard: () {
                      onTapMovieCard(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildNinetyEightColumn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_tv_channels".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 18.v),
          SizedBox(
              height: 223.v,
              child:
                  BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
                      selector: (state) => state.searchSixModelObj,
                      builder: (context, searchSixModelObj) {
                        return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 16.h);
                            },
                            itemCount:
                                searchSixModelObj?.movies6ItemList.length ?? 0,
                            itemBuilder: (context, index) {
                              Movies6ItemModel model =
                                  searchSixModelObj?.movies6ItemList[index] ??
                                      Movies6ItemModel();
                              return Movies6ItemWidget(model,
                                  onTapMovieCard: () {
                                onTapMovieCard(context);
                              });
                            });
                      })),
          SizedBox(height: 27.v),
          Text("lbl_playlist".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 17.v),
          SizedBox(
              height: 223.v,
              child:
                  BlocSelector<SearchSixBloc, SearchSixState, SearchSixModel?>(
                      selector: (state) => state.searchSixModelObj,
                      builder: (context, searchSixModelObj) {
                        return ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 16.h);
                            },
                            itemCount:
                                searchSixModelObj?.movies7ItemList.length ?? 0,
                            itemBuilder: (context, index) {
                              Movies7ItemModel model =
                                  searchSixModelObj?.movies7ItemList[index] ??
                                      Movies7ItemModel();
                              return Movies7ItemWidget(model,
                                  onTapMovieCard: () {
                                onTapMovieCard(context);
                              });
                            });
                      }))
        ]));
  }

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapMovieCard(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
