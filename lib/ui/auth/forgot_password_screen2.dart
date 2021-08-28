import 'package:flutter/material.dart';
import 'package:insure_marts/ui/auth/login_screen.dart';
import 'package:insure_marts/util/router.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/util/util.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class ForgotPasswordScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Utils.offKeyboard(context),
        child: Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Styles.colorWhite,
                title: CustomText(
                  'Forgot password',
                  fontSize: 14,
                  color: Styles.colorBlack,
                ),
                centerTitle: true,
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Styles.colorBlack,
                  size: 20,
                )),
            body: Container(
              color: Styles.colorWhite,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        'Recovery Email Sent',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Styles.colorBlack.withOpacity(0.8),
                      ),
                    ],
                  ),
                  verticalSpaceSmall,
                  Row(
                    children: [
                      Expanded(
                          child: CustomText(
                        'An email has been sent to you with a link to recover your password',
                        fontSize: 14,
                        textAlign: TextAlign.left,
                        color: Styles.colorBlack.withOpacity(0.8),
                      )),
                    ],
                  ),
                  verticalSpaceMedium,

                  //  verticalSpaceMedium,
                  CustomButton(
                    title: 'GO BACK TO LOGIN',
                    fontSize: 13,
                    height: 50,
                    buttonColor: Styles.colorBlue3,
                    onPressed: () => routeToReplace(context, LoginScreen()),
                  ),
                ],
              ),
            )));
  }
}
