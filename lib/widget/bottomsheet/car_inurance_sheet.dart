import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen1.dart';
import 'package:insure_marts/widget/export.dart';

class CarInsuranceBottomSheet extends StatelessWidget {
  CarInsuranceBottomSheet({
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
                  onPressed: () => Navigator.of(context).pop()),
              CustomText(
                'Car Insurance',
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
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'NEw car insurance'.toUpperCase(),
            onPressed: () {
              Navigator.of(context).pop();
              routeTo(context, CarUploadScreen1());
            },
          ),
          verticalSpaceMedium,
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'Renew existing insurance'.toUpperCase(),
            onPressed: onPressed,
          ),
          verticalSpaceMedium,
          CustomButton(
            height: 50,
            fontSize: 12,
            title: 'Get a premium quotation'.toUpperCase(),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
