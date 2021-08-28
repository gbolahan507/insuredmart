import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/pages/hard_copy_page.dart';
import 'package:insure_marts/ui/navigation_screen.dart';
import 'package:insure_marts/widget/export.dart';

class SuccessPaymennt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Center(
              child: Image.asset('images/sucessimage.png'),
            ),
            verticalSpaceSmall,
            CustomText(
              'Your Car Is Insured!',
              fontSize: 16,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Styles.colorBlue1,
            ),
            CustomText(
              'Order numbe: #987654',
              fontSize: 12,
              bottomMargin: 20,
            ),
            verticalSpaceMedium,
            CustomButton(
              height: 50,
              title: 'VIEW CERTIFICATE',
              onPressed: () {},
            ),
            verticalSpaceMedium,
            CustomButton(
              height: 50,
              title: 'VIEW POLICY DOCUMENT',
              onPressed: () {},
            ),
            verticalSpaceMedium,
            CustomButton(
              height: 50,
              title: 'REQUEST FOR HARD COPY',
              onPressed: () {
                routeTo(context, HardCopyPage());
              },
            ),
            verticalSpaceMedium,
            CustomButton(
              height: 50,
              title: 'BUY ANOTHER ONE',
              buttonColor: Styles.colorWhite,
              textColor: Styles.colorBlue2,
              onPressed: () {},
            ),
            verticalSpaceMedium,
            CustomButton(
              height: 50,
              buttonColor: Styles.colorWhite,
              title: 'GO HOME',
              textColor: Styles.colorBlue2,
              onPressed: () {
                routeToReplace(context, NavigationScreen());
              },
            ),
          ],
        ),
      ),
    ));
  }
}
