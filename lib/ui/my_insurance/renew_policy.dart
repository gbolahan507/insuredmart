import 'package:flutter/material.dart';
import 'package:insure_marts/ui/my_insurance/my_insurance_screen.dart';
import 'package:insure_marts/widget/bottomsheet/renew_policy.dart';
import 'package:insure_marts/widget/export.dart';

class RenewPolicy extends StatefulWidget {
  @override
  _RenewPolicyState createState() => _RenewPolicyState();
}

class _RenewPolicyState extends State<RenewPolicy> {
  List<String> boxes = [];
  bool chekbox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Renew Policies',
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return RenewPolicyContainer(
                      insurancepolicybox: false,
                      checkbox: Checkbox(
                          value: chekbox,
                          activeColor: Styles.colorBlue2,
                          onChanged: (value) {
                            setState(() {
                              // for (var i = 0; i < 3; i++) {
                              //   boxes.add(chekbox);
                              // }
                              chekbox = value;
                            });
                          }),
                    );
                  }),
              verticalSpaceMedium,
              CustomButton(
                height: 50,
                title: 'RENEW',
                buttonColor: Styles.colorBlue2,
                onPressed: () {
                  showRenewSheet(context);
                },
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
            ],
          ),
        )

        //  Container(
        //   color: Styles.colorWhite,
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   child: Center(
        //     child: ListView(
        //       shrinkWrap: true,
        //       children: [
        //         Container(
        //             height: 100,
        //             child: Image.asset(
        //               'images/nopolicy.png',
        //             )),
        //         CustomText(
        //           'You have no policies to renew',
        //           color: Styles.colorBlack2.withOpacity(0.5),
        //           topMargin: 25,
        //         ),
        //         CustomText(
        //           'You can first retrive your policies',
        //           color: Styles.colorBlack2.withOpacity(0.5),
        //           bottomMargin: 25,
        //         ),
        //         CustomText(
        //           'Retrive Your Policy',
        //           color: Styles.colorBlue2,
        //           fontWeight: FontWeight.w800,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }

  void showRenewSheet(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (context) {
        return RenewPolicyBottomSheet(
            // onPresseButton:
            );
      });
}
