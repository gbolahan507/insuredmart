import 'package:flutter/material.dart';
import 'package:insure_marts/ui/my_insurance/dropdown/bank_dropdown.dart';
import 'package:insure_marts/widget/export.dart';

class ClaimDischargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Claim Discharge',
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              verticalSpaceMedium,
              CustomTextField(
                title: 'Payee name',
                hintText: 'Oluwafemi Aramide',
              ),
              verticalSpaceMedium30,
              Row(
                children: [
                  CustomText(
                    'Bank Name',
                    color: Styles.colorBlack.withOpacity(0.8),
                    bottomMargin: 5,
                    fontWeight: FontWeight.w700,
                  ),
                ],
              ),
              BankDown(),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Payee name',
                hintText: 'Oluwafemi Aramide',
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Account Number',
                hintText: '3102002741',
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Account Name',
                hintText: 'Oluwafemi Aramide',
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Bank Sort Code (optional)',
                hintText: '24525272',
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Bank Branch (optional)',
                hintText: 'First Bank',
              ),
              verticalSpaceMedium30,
              CustomButton(
                height: 50,
                title: 'DISCHARGE CLAIM',
              ),
              verticalSpaceMedium30,
            ])));
  }
}
