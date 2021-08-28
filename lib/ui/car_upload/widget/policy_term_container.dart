import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';

class PolicyContainer extends StatelessWidget {
  final Function onTap;
  final border;
  final Color checkIconColor, squareBoxColor, dayColor, termColor;
  bool circle = true;
  final String title;
  final String number;

  PolicyContainer(
      {this.onTap,
      this.circle,
      this.dayColor,
      this.termColor,
      this.border,
      this.checkIconColor,
      this.title,
      this.number,
      this.squareBoxColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            circle
                ? Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: border,
                    ),
                  )
                : Container(
                    height: 20,
                    width: 20,
                    child: Icon(
                      Icons.check,
                      size: 20,
                      color: checkIconColor,
                    ),
                    decoration: BoxDecoration(
                      color: squareBoxColor,
                    ),
                  ),
            horizontalSpaceSmall,
            CustomText(
              title,
              fontSize: 14,
              color: dayColor,
            ),
            Spacer(),
            CustomText(
              number,
              fontSize: 14,
              color: termColor,
            ),
          ],
        ),
      ),
    );
  }
}
