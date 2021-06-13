import 'package:flutter/material.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_container.dart';
import 'package:insure_marts/widget/custom_heading.dart';
import 'package:insure_marts/widget/custom_switch.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:provider/provider.dart';



class TwoStepVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<ToggleData>(context, listen: false).initialdata();

    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            CustomHeading(
              headingText: '2-Step Verification',
            ),
            CustomContainer(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              widget: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          '2-Step Verification',
                          color: Styles.colorBlack,
                          fontWeight: FontWeight.w700,
                          bottomMargin: 5,
                        ),
                        CustomText(
                          'Send an OTP to your phone Number each time you want to login',
                          fontSize: 12,
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                  horizontalSpaceMedium,
                  Consumer<ToggleData>(
                    builder: (_, choose, child) => Container(
                        child: CustomSwitch(
                      value: choose.twoStepVerification,
                      onPressed: (val) {
                        choose.toggleTwoStepVerification();
                      },
                    )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
