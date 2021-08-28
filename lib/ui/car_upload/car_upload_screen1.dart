import 'package:flutter/material.dart';
import 'package:insure_marts/widget/bottomsheet/save_continue_sheet.dart';
import 'package:insure_marts/widget/export.dart';

class CarUploadScreen1 extends StatelessWidget {
  final _formKey = new GlobalKey<FormState>();

  final _fullNameController = TextEditingController();
  final _carMakerController = TextEditingController();
  final _carModelController = TextEditingController();
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
            verticalSpaceSmall,
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
                            val.isEmpty ? 'Enter User fullName' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Car Maker',
                        controller: _carMakerController,
                        hintText: 'e.g Toyota',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car Maker Name' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Car Model',
                        controller: _carModelController,
                        hintText: 'e.g Camry',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car model Name' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Color of vehicle',
                        controller: _carColorController,
                        hintText: 'Red',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car color' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Value of Car',
                        controller: _carValueColorController,
                        hintText: '1000000000 and above',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car value' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Registration Number',
                        controller: _registerNumberController,
                        hintText: 'eg 354ADF56',
                        validator: (val) => val.isEmpty
                            ? 'Enter car registration number'
                            : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Chasis Number',
                        controller: _cvvNumberController,
                        hintText: 'Chasis Number',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car chasis number' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Engine Number',
                        controller: _expiryNumberController,
                        hintText: 'Engine Number',
                        validator: (val) =>
                            val.isEmpty ? 'Enter car Engine Number' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomTextField(
                        title: 'Period of Insurance',
                        controller: _periodController,
                        hintText: '1 year',
                        validator: (val) =>
                            val.isEmpty ? 'Enter insurance Period' : null,
                      ),
                      verticalSpaceMedium30,
                      CustomButton(
                        title: 'CONTINUE',
                        height: 50,
                        buttonColor: Styles.colorBlue3,
                        onPressed: () {
                          // if (_formKey.currentState.validate()) {
                          routeTo(context, CarUploadScreen2());
                          // }
                        },
                      ),
                      verticalSpaceMedium,
                      CustomButton(
                        title: 'SAVE & CONTINUE LATER',
                        fontSize: 12,
                        height: 50,
                        textColor: Styles.colorBlue3,
                        buttonColor: Styles.colorWhite,
                        onPressed: () {
                          save(context);
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

  void save(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SaveBottomSheet();
      });
}
