import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:rohan_s_movie_application/core/app_export.dart';
import 'package:rohan_s_movie_application/core/utils/validation_functions.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/appbar_leading_image.dart';
import 'package:rohan_s_movie_application/widgets/app_bar/custom_app_bar.dart';
import 'package:rohan_s_movie_application/widgets/custom_elevated_button.dart';
import 'package:rohan_s_movie_application/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginScreen());
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
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 32.v),
                            child: Column(children: [
                              SizedBox(height: 22.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_log_in".tr,
                                      style: theme.textTheme.headlineLarge)),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_put_your_email_address".tr,
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700)),
                              SizedBox(height: 43.v),
                              BlocSelector<LoginBloc, LoginState,
                                      TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomTextFormField(
                                        controller: emailController,
                                        hintText: "lbl_your_email".tr,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 12.v, 10.h, 12.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  }),
                              SizedBox(height: 16.v),
                              BlocSelector<LoginBloc, LoginState,
                                      TextEditingController?>(
                                  selector: (state) => state.passwordController,
                                  builder: (context, passwordController) {
                                    return CustomTextFormField(
                                        controller: passwordController,
                                        hintText: "lbl_password".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.visiblePassword,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                16.h, 12.v, 10.h, 12.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLocation,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 48.v),
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidPassword(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_password"
                                                .tr;
                                          }
                                          return null;
                                        },
                                        obscureText: true);
                                  }),
                              SizedBox(height: 16.v),
                              CustomElevatedButton(
                                  height: 50.v,
                                  text: "lbl_login2".tr,
                                  onPressed: () {
                                    onTapLogin(context);
                                  }),
                              Spacer(),
                              Text("msg_don_t_have_an_account".tr,
                                  style: CustomTextStyles.bodySmallGray300)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgFrame20,
            margin: EdgeInsets.only(left: 16.h, right: 320.h),
            onTap: () {
              onTapImage(context);
            }));
  }

  /// Navigates to the previous screen.
  onTapImage(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the dashboardContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.dashboardContainerScreen,
    );
  }
}
