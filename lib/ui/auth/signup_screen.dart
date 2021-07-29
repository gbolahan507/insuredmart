import 'package:flutter/material.dart';
import 'package:insure_marts/core/api/auth_api.dart';
import 'package:insure_marts/core/view_model/auth_vm.dart';
import 'package:insure_marts/ui/auth/login_screen.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/custom_textspan_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _firstNameController = TextEditingController();

  final _phoneController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _repasswordController = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  AuthApi api;

  @override
  void initState() {
    api = AuthApi();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final String token = ModalRoute.of(context).settings.arguments as String;

    return BaseView<AuthViewModel>(
        onModelReady: (
          AuthViewModel model,
        ) {},
        builder: (_, AuthViewModel model, __) {
          return GestureDetector(
            onTap: () => Utils.offKeyboard(context),
            child: Scaffold(
              appBar: AppBar(
                  elevation: 0.0,
                  backgroundColor: Styles.colorWhite,
                  title: CustomText(
                    'Create your account',
                    fontSize: 18,
                    color: Styles.colorBlack,
                  ),
                  centerTitle: true,
                  leading: Icon(
                    Icons.arrow_back_ios,
                    color: Styles.colorBlack,
                    size: 20,
                  )),
              body: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView(
                    children: [
                      verticalSpaceSmall,
                      CustomTextField(
                        hintText: 'First Name',
                        title: 'First Name',
                        maxLines: 1,
                        controller: _firstNameController,
                        validator: (val) => Utils.isValidName(val),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomTextField(
                        hintText: '08062835561',
                        title: 'Phone',
                        maxLines: 1,
                        controller: _phoneController,
                        validator: (val) => Utils.isValidName(val),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomTextField(
                        hintText: 'Email Address',
                        title: 'Email',
                        maxLines: 1,
                        controller: _emailController,
                        validator: (val) => Utils.validateEmail(val),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomTextField(
                        hintText: 'Password',
                        title: 'Password',
                        maxLines: 1,
                        obscure: true,
                        controller: _passwordController,
                        validator: (val) => Utils.validatePassword(val),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomTextField(
                          hintText: 'Re-enter Password',
                          title: 're-enter password',
                          maxLines: 1,
                          obscure: true,
                          controller: _repasswordController,
                          validator: (val) => Utils.validateConfirmPassword(
                              val, _passwordController.text)),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomButton(
                        title:
                            model.busy ? 'Creating your account...' : 'SIGN UP',
                        fontSize: 13,
                        height: 50,
                        busy: model.busy,
                        buttonColor: Styles.appBackground1,
                        onPressed: () {
                          final Map<String, String> data = {
                            "fullname": _firstNameController.text,
                            "phone": _phoneController.text,
                            "email": _emailController.text,
                            "password": _passwordController.text,
                          };
                          if (_formKey.currentState.validate()) {
                            print(data);
                            model.createUsers(context, data);
                          }
                        },
                      ),
                      verticalSpaceMedium,
                      verticalSpaceTiny,
                      CustomText(
                        'Or login with',
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
                      verticalSpaceMedium,
                      RichText(
                        textAlign: TextAlign.center,
                        text: customTextSpan(
                          text: 'By continue, you agree to our  ',
                          context: context,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Styles.colorBlack,
                          children: <TextSpan>[
                            customTextSpan(
                              text: 'Terns of use',
                              context: context,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Styles.colorDeepGreen,

                              // locator<NavigationService>()
                              //     .navigateToReplacing(OnboardView),
                            ),
                          ],
                        ),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceSmall,
                      RichText(
                        textAlign: TextAlign.center,
                        text: customTextSpan(
                          text: 'Already a user  ',
                          context: context,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Styles.colorBlack,
                          children: <TextSpan>[
                            customTextSpan(
                                text: 'Login',
                                context: context,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Styles.colorDeepGreen,
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                }),
                          ],
                        ),
                      ),
                      verticalSpaceMedium,
                      verticalSpaceSmall,
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
