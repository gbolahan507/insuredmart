import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';



class ChangePasswordScreen extends StatelessWidget {
  final _currentPassword = TextEditingController();
  final _newPassword = TextEditingController();
  final _confirmNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Change Password',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Styles.colorWhite,
          child: ListView(
            children: [
              verticalSpaceSmall,
              CustomTextField(
                title: 'First Name',
                hintText: 'Aramide',
                controller: _currentPassword,
                obscure: true,
                maxLines: 1,
              ),
              verticalSpaceMedium,
              verticalSpaceTiny,
              CustomTextField(
                title: 'New Password',
                hintText: 'New Password',
                controller: _newPassword,
                obscure: true,
                maxLines: 1,
              ),
              verticalSpaceMedium,
              verticalSpaceTiny,
              CustomTextField(
                title: 'Re-enter New Password',
                hintText: 'Re-enter New Password',
                controller: _confirmNewPassword,
                inputType: TextInputType.emailAddress,
                obscure: true,
                maxLines: 1,
              ),
              verticalSpaceMedium,
              verticalSpaceTiny,
              CustomButton(
                title: 'CHANGE & SAVE',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
