import 'package:flutter/material.dart';

import 'package:insure_marts/widget/export.dart';


class SecurityPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Security & Password',
        ),
      ),
      body: Consumer<ToggleData>(
        builder: (_, choose, child) => Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              SecurityPasswordContainer(
                title: 'BVN',
                status: 'Connected',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BvnScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'ID Verification',
                status: 'Not Connected',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IdVerification()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Utility Bill',
                status: 'Not Verified',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => UtilityBill()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Phone Number',
                status: 'Not Connected',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PhoneNumberScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: '2-step verification',
                status: choose.twoStepVerification ? 'on' : 'off',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TwoStepVerificationScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Next of Kin',
                status: 'Not added',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextKinScreen()));
                },
              ),
              SecurityPasswordContainer(
                title: 'Change Password',
                status: 'Done',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChangePasswordScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecurityPasswordContainer extends StatelessWidget {
  final String title, status;
  final Function onPressed;

  const SecurityPasswordContainer(
      {Key key, this.title, this.onPressed, this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomContainer(
          onPressed: onPressed,
          widget: Row(
            children: [
              CustomText(
                title,
                fontSize: 14,
                color: Styles.colorBlack,
              ),
              Spacer(),
              CustomText(
                status,
                fontSize: 12,
              ),
              horizontalSpaceMedium,
              CustomIcon(
                icon: Icons.arrow_forward_ios,
                size: 12,
              )
            ],
          ),
        ),
        verticalSpaceMedium
      ],
    );
  }
}
