import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';



class CarUploadScreen1 extends StatelessWidget {
  final _carBrand = TextEditingController();
  final _carModel = TextEditingController();
  final _mYear = TextEditingController();
  final _rNumber = TextEditingController();
  final _cNumber = TextEditingController();
  final _eNumber = TextEditingController();

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
                child: ListView(
                  children: [
                    CustomTextField(
                      title: 'Car Brand',
                      controller: _carBrand,
                      hintText: 'e.g Toyota',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomTextField(
                      title: 'Car Model',
                      controller: _carModel,
                      hintText: 'e.g Camry',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomTextField(
                      title: 'Manufacture Year',
                      controller: _mYear,
                      hintText: 'e.g 2014',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomTextField(
                      title: 'Registration Number',
                      controller: _rNumber,
                      hintText: '10-digit number',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomTextField(
                      title: 'Chasis Number',
                      controller: _cNumber,
                      hintText: '10-digit number',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomTextField(
                      title: 'Engine Number',
                      controller: _eNumber,
                      hintText: '10-digit number',
                      validator: (val) =>
                          val.isEmpty ? 'Enter car brand' : null,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceMedium,
                    CustomButton(
                      title: 'CONTINUE',
                      fontSize: 12,
                      height: 50,
                      buttonColor: Styles.appBackground1,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarUploadScreen2()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarUploadScreen2()));
                      },
                    ),
                    verticalSpaceMedium,
                    verticalSpaceSmall
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
