import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';

class RejectClaimPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Reject Claim',
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              verticalSpaceMedium,
              CustomTextField(
                title: 'Reason',
                hintText: 'Reason',
                maxLines: 10,
              ),
              verticalSpaceMedium30,
              CustomButton(
                height: 50,
                title: 'DISCHARGE CLAIM',
                onPressed: () {
                  
                },
              )
            ])));
  }
}
