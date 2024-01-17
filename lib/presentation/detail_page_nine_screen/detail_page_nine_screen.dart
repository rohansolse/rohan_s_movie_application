import '../detail_page_nine_screen/widgets/chipview_item_widget.dart';
import '../detail_page_nine_screen/widgets/movies1_item_widget.dart';
import 'bloc/detail_page_nine_bloc.dart';
import 'models/chipview_item_model.dart';
import 'models/detail_page_nine_model.dart';
import 'models/movies1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';

class DetailPageNineScreen extends StatelessWidget {
  const DetailPageNineScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageNineBloc>(
        create: (context) => DetailPageNineBloc(
            DetailPageNineState(detailPageNineModelObj: DetailPageNineModel()))
          ..add(DetailPageNineInitialEvent()),
        child: DetailPageNineScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 32.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgThumbnailImage28,
                                        height: 140.v,
                                        width: 90.h,
                                        radius: BorderRadius.circular(2.h),
                                        onTap: () {
                                          onTapImgThumbnailImage(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.h,
                                            top: 38.v,
                                            bottom: 36.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("lbl_captain_marvel".tr,
                                                  style: CustomTextStyles
                                                      .titleMediumWhiteA700),
                                              SizedBox(height: 6.v),
                                              SizedBox(
                                                  width: 136.h,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("lbl_2019".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Text("lbl_action".tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall),
                                                        Container(
                                                            height: 3.adaptSize,
                                                            width: 3.adaptSize,
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        6.v),
                                                            decoration: BoxDecoration(
                                                                color: theme
                                                                    .colorScheme
                                                                    .onPrimaryContainer,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            1.h))),
                                                        Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text("lbl_4_5".tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall),
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgSignal,
                                                                  height: 8
                                                                      .adaptSize,
                                                                  width: 8
                                                                      .adaptSize,
                                                                  margin: EdgeInsets.only(
                                                                      left: 3.h,
                                                                      top: 2.v,
                                                                      bottom:
                                                                          4.v))
                                                            ])
                                                      ])),
                                              SizedBox(height: 5.v),
                                              Text("lbl_1_hr_49min".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]))
                                  ])),
                              SizedBox(height: 24.v),
                              _buildChipView(context),
                              SizedBox(height: 25.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 325.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 18.h),
                                      child: Text("msg_set_in_the_1990s2".tr,
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodySmall!
                                              .copyWith(height: 1.50)))),
                              SizedBox(height: 26.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("msg_you_might_also_like".tr,
                                      style:
                                          CustomTextStyles.titleSmallSemiBold)),
                              SizedBox(height: 17.v),
                              _buildMovies(context)
                            ]))))));
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
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v))
        ]);
  }

  /// Section Widget
  Widget _buildChipView(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: BlocSelector<DetailPageNineBloc, DetailPageNineState,
                DetailPageNineModel?>(
            selector: (state) => state.detailPageNineModelObj,
            builder: (context, detailPageNineModelObj) {
              return Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children: List<Widget>.generate(
                      detailPageNineModelObj?.chipviewItemList.length ?? 0,
                      (index) {
                    ChipviewItemModel model =
                        detailPageNineModelObj?.chipviewItemList[index] ??
                            ChipviewItemModel();
                    return ChipviewItemWidget(model,
                        onSelectedChipView: (value) {
                      context.read<DetailPageNineBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    });
                  }));
            }));
  }

  /// Section Widget
  Widget _buildMovies(BuildContext context) {
    return SizedBox(
        height: 243.v,
        child: BlocSelector<DetailPageNineBloc, DetailPageNineState,
                DetailPageNineModel?>(
            selector: (state) => state.detailPageNineModelObj,
            builder: (context, detailPageNineModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 16.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount:
                      detailPageNineModelObj?.movies1ItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    Movies1ItemModel model =
                        detailPageNineModelObj?.movies1ItemList[index] ??
                            Movies1ItemModel();
                    return Movies1ItemWidget(model, onTapMovieCard: () {
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

  /// Navigates to the detailPageSevenScreen when the action is triggered.
  onTapImgThumbnailImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailPageSevenScreen,
    );
  }
}
