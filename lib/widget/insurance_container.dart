import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dot_circle.dart';

class InsuranceContainer extends StatelessWidget {
  final String title, coverNumber, policyYear, image, price;
  final Color backroundColor, borderColor, stackBoxColor, stackIconColor;
  final Function onTap;

  const InsuranceContainer(
      {Key key,
      this.title,
      this.coverNumber,
      this.onTap,
      this.policyYear,
      this.image,
      this.price,
      this.stackBoxColor,
      this.stackIconColor,
      this.backroundColor,
      this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: backroundColor,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: borderColor,
                  width: 2,
                )),
            child: Row(
              children: [
                DotCircle(
                    padding: EdgeInsets.all(8),
                    width: 50.0,
                    height: 50.0,
                    widget: Image.asset(
                      '$image',
                      width: 5,
                    ),
                    backgroundColor: Styles.colorWhite),
                horizontalSpaceSmall,
                CustomText(
                  '$title',
                  textAlign: TextAlign.center,
                  fontSize: 14,
                  color: Styles.colorBlack,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
          Positioned(
            right: 13,
            top: -7,
            child: Container(
              width: 20,
              height: 20,
              child: Center(
                  child: Icon(Icons.check, size: 20, color: stackIconColor)),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: stackBoxColor),
            ),
          )
        ],
      ),
    );
  }
}
