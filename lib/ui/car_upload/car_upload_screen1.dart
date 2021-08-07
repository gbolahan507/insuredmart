import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';

class CarUploadScreen1 extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _carBrandController = TextEditingController();
  final _carModelController = TextEditingController();
  final _monthYearController = TextEditingController();
  final _registerNumberController = TextEditingController();
  final _cvvNumberController = TextEditingController();
  final _expiryNumberController = TextEditingController();
  final _carColorController = TextEditingController();
  final _carValueColorController = TextEditingController();
  final _periodController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'New plan',
        ),
      ),
      body: Container(
        color: Styles.colorWhite,
        child: Column(
          children: [
            CarUploadHeader(
              steps: 'step 1 0f 5',
              title: 'Car Details',
              indicatorwidth: 0.20,
              forwardOntap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarUploadScreen2()));
              },
            ),
            verticalSpaceMedium,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      CustomTextField(
                        title: 'Full Name of User',
                        controller: _fullNameController,
                        hintText: 'Enter Name',
                        validator: (val) =>
                            val.isEmpty ? 'Enter fullName' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Car Brand',
                        controller: _carBrandController,
                        hintText: 'e.g Toyota',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car brand' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Car Model',
                        controller: _carModelController,
                        hintText: 'e.g Camry',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car model' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Car Color',
                        controller: _carColorController,
                        hintText: 'e.g Red',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car color' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Value of Car',
                        controller: _carValueColorController,
                        hintText: 'e.g Red',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car value' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Manufacture Year',
                        controller: _monthYearController,
                        hintText: 'e.g 2014',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car brand' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Registration Number',
                        controller: _registerNumberController,
                        hintText: '10-digit number',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car brand' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Chasis Number',
                        controller: _cvvNumberController,
                        hintText: '10-digit number',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car brand' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Engine Number',
                        controller: _expiryNumberController,
                        hintText: '10-digit number',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car brand' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Period of Insurance',
                        controller: _periodController,
                        hintText: '1 year',
                        validator: (val) =>
                            val.isEmpty ? 'Enter insurance' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomButton(
                        title: 'CONTINUE',
                        fontSize: 12,
                        height: 50,
                        buttonColor: Styles.appBackground1,
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {

                          routeTo(context, CarUploadScreen2());
                          // }
                        },
                      ),
                      verticalSpaceSmall,
                      CustomButton(
                        title: 'SAVE & CONTINUE LATER',
                        fontSize: 12,
                        height: 50,
                        textColor: Styles.appBackground1,
                        buttonColor: Styles.colorWhite,
                        onPressed: () {
                          routeTo(context, CarUploadScreen2());
                        },
                      ),
                      verticalSpaceMedium,
                      verticalSpaceSmall
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
