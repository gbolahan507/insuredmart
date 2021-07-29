import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';



class UtilityBill extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Utility Bil',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            UploadContainer(
              title: 'Utility Bill',
              onPressed: () {},
            ),
            verticalSpaceMedium,
            Row(
              children: [
                CustomText(
                  'Utility Bill Type',
                  fontSize: 14,
                  color: Styles.colorBlack,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            verticalSpaceTiny,
            UtilityDropDown(),
            verticalSpaceMedium,
            CustomButton(
              title: 'SAVE',
              onPressed: () {},
            ),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
