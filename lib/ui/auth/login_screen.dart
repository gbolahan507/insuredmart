import 'package:flutter/material.dart';
import 'package:insure_marts/core/view_model/auth_vm.dart';
import 'package:insure_marts/ui/auth/forgot_password_screen.dart';
import 'package:insure_marts/ui/auth/signup_screen.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/custom_textspan_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BaseView<AuthViewModel>(
        onModelReady: (AuthViewModel model) {},
        builder: (_, AuthViewModel model, __) {
          return GestureDetector(
              onTap: () => Utils.offKeyboard(context),
              child: Scaffold(
                  body: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Styles.colorWhite,
                  child: ListView(children: [
                    verticalSpaceLarge,
                    verticalSpaceLarge,
                    Center(
                      child: Image.asset(
                        'images/ord_logo.png',
                        height: screenAwareSize(70, context),
                        width: screenAwareSize(70, context, width: true),
                      ),
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      'Welcome Back!',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Styles.colorBlack,
                    ),
                    verticalSpaceMedium,
                    CustomTextField(
                        hintText: 'Email',
                        title: 'Email',
                        maxLines: 1,
                        controller: _emailController,
                        validator: (val) => Utils.validateEmail(val)),
                    verticalSpaceMedium,
                    verticalSpaceTiny,
                    CustomTextField(
                      hintText: 'Password',
                      title: 'password',
                      maxLines: 1,
                      controller: _passwordController,
                      validator: (val) => Utils.validatePassword(val),
                      obscure: true,
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            // navigate.navigateTo(ForgotPasswordScreen);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ForgotPasswordScreen()));
                          },
                          child: CustomText(
                            'Forgot Password',
                            color: Styles.colorDeepGreen,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ],
                    ),
                    verticalSpaceMedium,
                    verticalSpaceTiny,
                    CustomButton(
                      title: model.busy ? 'Login you in...' : 'LOGIN',
                      fontSize: 13,
                      height: 50,
                      busy: model.busy,
                      buttonColor: Styles.appBackground1,
                      onPressed: () {
                        final Map<String, String> data = {
                          "email": _emailController.text,
                          "password": _passwordController.text
                        };
                        if (_formKey.currentState.validate()) {
                          print(data);
                          model.loginUser(context, data);
                        }
                      },
                    ),
                    verticalSpaceMedium,
                    verticalSpaceTiny,
                    CustomText(
                      'Or Login with',
                      color: Styles.colorBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/facebook.png',
                          height: screenAwareSize(50, context),
                          width: screenAwareSize(50, context, width: true),
                        ),
                        horizontalSpaceSmall,
                        Image.asset(
                          'images/google.png',
                          height: screenAwareSize(50, context),
                          width: screenAwareSize(50, context, width: true),
                        ),
                      ],
                    ),
                    verticalSpaceLarge,
                    verticalSpaceMedium,
                    RichText(
                      textAlign: TextAlign.center,
                      text: customTextSpan(
                        text: 'Dont have any account? ',
                        context: context,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Styles.colorBlack,
                        children: <TextSpan>[
                          customTextSpan(
                              text: 'Sign Up',
                              context: context,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Styles.colorDeepGreen,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignupScreen()));
                              }
                              // locator<NavigationService>()
                              //     .navigateToReplacing(OnboardView),
                              ),
                        ],
                      ),
                    ),
                  ]),
                ),
              )));
        });
  }
}
