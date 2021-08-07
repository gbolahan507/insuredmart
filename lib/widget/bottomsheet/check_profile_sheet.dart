import 'package:flutter/material.dart';
import 'package:insure_marts/ui/profile/profile_screen.dart';
import 'package:insure_marts/widget/export.dart';

class ProfileBottomSheet extends StatelessWidget {
  ProfileBottomSheet({
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
                    'Complete Profile',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Styles.colorBlack,
                    bottomMargin: 20,
                  ),
                  SizedBox(
                    width: 32,
                  )
                ],
              ),
              CustomText(
                'Kindly first go to your profile to update your settings and security requirements',
                fontSize: 13,
                color: Styles.colorBlack,
                bottomMargin: 20,
              ),
              CustomButton(
                  height: 50,
                  fontSize: 12,
                  title: 'GO TO PROFILE',
                  onPressed: () {
                    Navigator.of(context).pop();
                    routeTo(context, ProfileScreen());
                  }),
            ]));
  }
}
