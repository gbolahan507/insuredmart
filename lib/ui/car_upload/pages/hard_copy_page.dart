import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';

class HardCopyPage extends StatelessWidget {
  final TextEditingController deliverController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Request for hard copy',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          color: Styles.colorWhite,
          child: ListView(
            children: [
              verticalSpaceMedium,
              CustomTextField(
                title: 'Delivery address',
                hintText: 'Delivery address',
                controller: deliverController,
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Contact name',
                hintText: 'John Doe',
                controller: deliverController,
              ),
              verticalSpaceMedium30,
              CustomTextField(
                title: 'Contact number',
                hintText: '08067254316',
                controller: deliverController,
              ),
              verticalSpaceMedium30,
              CustomButton(
                height: 50,
                title: 'REQUEST',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
