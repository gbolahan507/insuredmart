import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';





class RenewPolicyBottomSheet extends StatelessWidget {
  RenewPolicyBottomSheet({
    this.title,
    this.subTitle,
    this.onPressed,
  });

  final String title;
  final String subTitle;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                      icon: Icons.close,
                      color: Styles.colorBlack,
                      size: 25,
                      onPressed: () => Navigator.of(context).pop(context)),
                  CustomText(
                    'Renew 1 Policies',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Styles.colorBlack,
                    bottomMargin: 20,
                  ),
                  SizedBox(
                    width: 32,
                  )
                ],
              ),
              CustomText(
                'Are you sure you want to renew 1 expired\npolicies?',
                fontSize: 13,
                color: Styles.colorBlack,
                bottomMargin: 20,
              ),
                CustomButton(
                height: 50,
                title: 'YES, RENEW',
                onPressed: () {
                },
              ),
              verticalSpaceMedium,
              CustomButton(
                height: 50,
                title: 'NO, DO NOT RENEW',
                textColor: Styles.colorBlue3,
                buttonColor: Styles.colorWhite,
                onPressed: () {},
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
            ]));
  }
}
