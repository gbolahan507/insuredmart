import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';

class SaveBottomSheet extends StatelessWidget {
  SaveBottomSheet({
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
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'SAVE AS DRAFT'.toUpperCase(),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          verticalSpaceMedium,
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'DELETE DRAFT'.toUpperCase(),
            onPressed: onPressed,
            borderColor: Styles.red,
            textColor: Styles.red,
            buttonColor: Styles.colorWhite,
          ),
          verticalSpaceMedium,
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'CANCEL'.toUpperCase(),
            onPressed: onPressed,
            textColor: Styles.colorBlue3,
            buttonColor: Styles.colorWhite,
          )
        ],
      ),
    );
  }
}
