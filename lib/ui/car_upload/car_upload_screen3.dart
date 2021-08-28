import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/homepage_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/widget/bottomsheet/save_continue_sheet.dart';
import 'package:insure_marts/widget/export.dart';






class CarUploadScreen3 extends StatefulWidget {
  @override
  _CarUploadScreen3State createState() => _CarUploadScreen3State();
}

class _CarUploadScreen3State extends State<CarUploadScreen3> {
  @override
  Widget build(BuildContext context) {
    // Logger().d(AppCache.getExtensions());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'New Car Insurance',
        ),
      ),
      body: Container(
        color: Styles.colorWhite,
        child: ListView(
          children: [
            CarUploadHeader(
              steps: 'step 3 0f 5',
              title: 'Choose Extensions',
              indicatorwidth: 0.60,
              forwardOntap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarUploadScreen4()));
              },
            ),
            verticalSpaceMedium,
            ListView.builder(
                itemCount: extension.length ?? 0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final model = extension[index];
                  bool isSelected =
                      AppCache.getExtensions().contains(model[index]);

                  return Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 20, right: 20),
                    child: CustomContainer(
                      text: extension[index],
                      onPressed: () {
                        setState(() {
                          AppCache.saveExtensions(model[index]);
                        });
                      },
                      borderColor: isSelected
                          ? Styles.colorLightgreen
                          : Styles.colorBoxBorder,
                      containerColor: isSelected
                          ? Styles.colorLightLemon
                          : Styles.colorBoxBackground,
                      checkboxColor: isSelected
                          ? Styles.colorLightLemon
                          : Styles.colorBlack.withOpacity(0.1),
                      iconColor: isSelected
                          ? Styles.colorBlue3
                          : Colors.transparent,
                    ),
                  );
                }),
            verticalSpaceMedium,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomButton(
                    title: 'CONTINUE',
                    fontSize: 12,
                    height: 50,
                    buttonColor: Styles.colorBlue3,
                    onPressed: () {
                      routeTo(context, CarUploadScreen4());
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
                      save();
                    },
                  ),
                  verticalSpaceMedium,
                      verticalSpaceSmall
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void save() => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SaveBottomSheet();
      });
}
