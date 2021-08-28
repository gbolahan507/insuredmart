import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/homepage_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/core/view_model/others_vm.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/widget/bottomsheet/save_continue_sheet.dart';
import 'package:insure_marts/widget/export.dart';

class CarUploadScreen4 extends StatefulWidget {
  @override
  _CarUploadScreen4State createState() => _CarUploadScreen4State();
}

class _CarUploadScreen4State extends State<CarUploadScreen4> {
  @override
  Widget build(BuildContext context) {
    // Logger().d(AppCache.getInsuranceType());\
    return BaseView<OthersViewModel>(
        onModelReady: (OthersViewModel model) => model.getExtension(),
        builder: (_, OthersViewModel model, child) {
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
                    steps: 'step 4 0f 5',
                    title: 'Choose Extensions',
                    indicatorwidth: 0.60,
                    forwardOntap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            showModalBottomSheet<void>(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20.0)),
                                ),
                                context: context,
                                isScrollControlled: true,
                                builder: (_) {
                                  return const SetupProfileSheet();
                                });
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'images/sort.png',
                                width: 15,
                              ),
                              horizontalSpaceTiny,
                              CustomText(
                                'Sort',
                                fontSize: 14,
                                color: Styles.colorGrey,
                              ),
                            ],
                          ),
                        ),
                        horizontalSpaceMedium,
                        InkWell(
                          onTap: () {
                            routeTo(context, FilterPage());
                          },
                          child: Row(
                            children: [
                              Image.asset(
                                'images/filter.png',
                                width: 15,
                              ),
                              horizontalSpaceTiny,
                              CustomText(
                                'Filter',
                                fontSize: 14,
                                color: Styles.colorGrey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalSpaceMedium,
                  ListView.builder(
                      itemCount: insuranceTypeModel.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final InsuranceTypeModel insurance =
                            insuranceTypeModel[index];
                        bool isSelected = AppCache.getInsuranceType()
                            .contains(insurance.title);
                        print(insuranceTypeModel.length);
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: 20,
                          ),
                          child: InsuranceContainer(
                            borderColor: isSelected
                                ? Styles.colorLightgreen
                                : Styles.colorBoxBorder,
                            backroundColor: isSelected
                                ? Styles.colorLightLemon
                                : Styles.colorBoxBackground,
                            stackBoxColor: isSelected
                                ? Styles.colorBlue3
                                : Colors.transparent,
                            stackIconColor: isSelected
                                ? Styles.colorWhite
                                : Colors.transparent,
                            title: insurance.title,
                            image: insurance.image,
                            onTap: () {
                              AppCache.saveInsuranceType(insurance.title);
                              setState(() {});
                            },
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
                            routeTo(context, CarUploadScreen5());
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
        });
  }

  void save() => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SaveBottomSheet();
      });
}
