import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';



class BvnScreen extends StatelessWidget {
  final _bvnNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'BVN',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              CustomTextField(
                  title: 'BVN',
                  hintText: '10-digit number',
                  controller: _bvnNumber,
                  inputType: TextInputType.number),
              verticalSpaceMedium,
              CustomButton(
                title: 'VERIFY & SAVE',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
