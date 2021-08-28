import 'package:flutter/material.dart';
import 'package:insure_marts/ui/my_insurance/renew_policy.dart';
import 'package:insure_marts/widget/export.dart';

class MyInsuranceScreen1 extends StatefulWidget {
  @override
  _MyInsuranceScreen1State createState() => _MyInsuranceScreen1State();
}

class _MyInsuranceScreen1State extends State<MyInsuranceScreen1> {
  List<String> insurance = ['Renew Expired Policies', 'Renew My Policy'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.colorWhite,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'My Insurance',
          check: true,
          actions: PopupMenuButton(
            // initialValue:
            child: Icon(Icons.more_vert_outlined),
            onSelected: (value) {
              setState(() {
                print(value);
                value == 'Renew My Policy'
                    ? routeTo(context, RenewPolicy())
                    : print('boy');
              });
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            itemBuilder: (context) {
              return List.generate(insurance.length, (index) {
                return PopupMenuItem(
                  value: insurance[index],
                  child: CustomText(
                    '${insurance[index]}',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Styles.colorBlue2,
                  ),
                );
              });
            },
          ),
          backbutton: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            verticalSpaceSmall,
            InsuranceDropDown(),
            verticalSpaceSmall,
            RenewPolicyContainer(
              insurancepolicybox: true,
            )
          ],
        ),
      ),
    );
  }
}

class RenewPolicyContainer extends StatefulWidget {
  RenewPolicyContainer({
    this.insurancepolicybox,
    this.checkbox,
    Key key,
  }) : super(key: key);

  bool insurancepolicybox = true;
  final Widget checkbox;

  @override
  _RenewPolicyContainerState createState() => _RenewPolicyContainerState();
}

class _RenewPolicyContainerState extends State<RenewPolicyContainer> {
  bool chekbox = false;

  // List<>

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Styles.colorGrey1),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            !widget.insurancepolicybox
                ? Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: widgcheckbox ,
                          ),
                        ],
                      ),
                      verticalSpaceMedium,
                      verticalSpaceMedium,
                    ],
                  )
                : SizedBox(),
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
                    subtitle: 'Rav4'),
                OthersPackage(
                    title: 'Car year',
                    subTitleColor: Styles.colorDeepGreen,
                    subtitle: '2021')
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: <Widget>[
                OthersPackage(
                    title: 'Policy',
                    subTitleColor: Styles.colorBlue3,
                    subtitle: 'Josha Hawkins Car Insurance'),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: <Widget>[
                OthersPackage2(
                    title: 'Provider',
                    image: 'images/Bitmap2.png',
                    subTitleColor: Styles.colorBlue3,
                    subtitle: 'Josha Hawkins Car Insurance'),
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: <Widget>[
                OthersPackage(title: 'Sum Insured', subtitle: '#23,18253,52'),
                OthersPackage(
                    title: 'Expiry Date',
                    subTitleColor: Styles.colorDeepGreen,
                    subtitle: '28-02-2020')
              ],
            ),
            verticalSpaceMedium,
            Row(
              children: <Widget>[
                OthersPackage(title: 'Registration No', subtitle: '****6563'),
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
            widget.insurancepolicybox
                ? Column(
                    children: [
                      verticalSpaceMedium,
                      horizontalSpaceTiny,
                      Row(
                        children: [
                          Expanded(
                            child: CustomButton(
                              buttonColor: Styles.colorGrey2,
                              title: 'MORE DETAILS',
                              borderColor: Styles.colorGrey2,
                              textColor: Styles.colorBlue3,
                            ),
                          ),
                          horizontalSpaceMedium,
                          Expanded(
                            child: CustomButton(
                              buttonColor: Styles.colorGrey2,
                              borderColor: Styles.colorGrey2,
                              textColor: Styles.colorBlue3,
                              title: 'REPORT CALM',
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}

class OthersPackage2 extends StatelessWidget {
  final String title, subtitle;
  final image;
  final subTitleColor;
  const OthersPackage2(
      {Key key, this.image, this.title, this.subTitleColor, this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomText(
                title,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Styles.colorGrey,
                bottomMargin: 5,
              ),
              Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset('$image'),
                  ),
                  horizontalSpaceTiny,
                  CustomText(
                    subtitle,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: subTitleColor ?? Styles.colorBlack,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
