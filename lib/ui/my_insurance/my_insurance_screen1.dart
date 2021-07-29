import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';


class MyInsuranceScreen1 extends StatelessWidget {
  const MyInsuranceScreen1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'My Insurance',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            verticalSpaceSmall,
            InsuranceDropDown(),
            verticalSpaceSmall,
            CustomContainer(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              widget: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('images/toyota.png'),
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: <Widget>[
                      OthersPackage(title: 'Car Name', subtitle: 'Toyota'),
                      OthersPackage(
                          title: 'Car Model',
                          subTitleColor: Styles.colorDeepGreen,
                          subtitle: 'Rav4')
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: <Widget>[
                      OthersPackage(
                          title: 'Policy',
                          subTitleColor: Styles.appBackground1,
                          subtitle: 'Josha Hawkins Car Insurance'),
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: <Widget>[
                      OthersPackage(
                          title: 'Provider',
                          subTitleColor: Styles.appBackground1,
                          subtitle: 'Josha Hawkins Car Insurance'),
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: <Widget>[
                      OthersPackage(
                          title: 'Sum Insured', subtitle: '#23,18253,52'),
                      OthersPackage(
                          title: 'Expiry Date',
                          subTitleColor: Styles.colorDeepGreen,
                          subtitle: '28-02-2020')
                    ],
                  ),
                  verticalSpaceMedium,
                  Row(
                    children: <Widget>[
                      OthersPackage(
                          title: 'Registration No', subtitle: '****6563'),
                      OthersPackage(
                          title: 'Chassis N0.',
                          subTitleColor: Styles.colorDeepGreen,
                          subtitle: '****6563'),
                      OthersPackage(
                          title: 'Engine N0.',
                          subTitleColor: Styles.colorDeepGreen,
                          subtitle: '****6563'),
                    ],
                  ),
                  verticalSpaceMedium,
                  horizontalSpaceTiny,
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          buttonColor: Styles.colorGrey.withOpacity(0.2),
                          title: 'MORE DETAILS',
                          borderColor: Styles.colorGrey.withOpacity(0.5),
                          textColor: Styles.appBackground1,
                        ),
                      ),
                      horizontalSpaceMedium,
                      Expanded(
                        child: CustomButton(
                          title: 'REPORT CALM',
                        ),
                      ),
                    ],
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
