import 'package:flutter/material.dart';
import 'package:insure_marts/ui/claim/page/personal&third.dart';
import 'package:insure_marts/ui/claim/page/personal_page.dart';
import 'package:insure_marts/ui/claim/page/third_party.dart';
import 'package:insure_marts/core/models/all_dropdown_model.dart';
import 'package:insure_marts/ui/my_insurance/dropdown/claim_type.dart';
import 'package:insure_marts/widget/export.dart';

class NewClaimScreen extends StatelessWidget {
  @override
  Widget build(final BuildContext context) {
    return Consumer<AllDropDownModel>(builder: (_, AllDropDownModel model, __) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'New Claim',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              verticalSpaceMedium,
              Row(
                children: [
                  CustomText(
                    'Types of Loss',
                    fontWeight: FontWeight.w700,
                    color: Styles.colorBlack.withOpacity(0.8),
                    bottomMargin: 5,
                  ),
                ],
              ),
              ClaimTypeDropDown(),
              verticalSpaceMedium30,
              model.selected?.length == 14 ?? 0
                  // model.items?.length == 0 ?? 0
                  ? ThirdPartyClaim()
                  : model.selected?.length == 20 ?? 0
                      ? PersonalThirdPartyClaim()
                      : PersonalClaim()
              //  : SizedBox()
            ],
          ),
        ),
      );
    });
  }
}
