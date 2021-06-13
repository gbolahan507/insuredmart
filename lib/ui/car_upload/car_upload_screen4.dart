import 'package:flutter/material.dart';
import 'package:insure_marts/core/provider/all_toggle_provider.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen5.dart';
import 'package:insure_marts/ui/car_upload/filter_screen.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/bottomsheet/setup_profile.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/insurance_container.dart';
import 'package:insure_marts/widget/size_calculator.dart';
import 'package:provider/provider.dart';

class CarUploadScreen4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Provider.of<ToggleData>(context, listen: false).initialdata();

    return Scaffold(
      body: Consumer<ToggleData>(
        builder: (_, choose, child) => Container(
              child: Container(
          color: Styles.colorWhite,
          child: ListView(
            children: [
              SizedBox(
                height: screenAwareSize(40, context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    CustomIcon(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    horizontalSpaceTiny,
                    CustomText(
                      'New Car Insurance',
                      color: Styles.colorBlack,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ],
                ),
              ),
              verticalSpaceMedium,
              CarUploadHeader(
                steps: 'step 4 0f 5',
                title: 'Choose Insurance',
                indicatorwidth: 0.80,
                forwardOntap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CarUploadScreen5()));
                },
              ),
              verticalSpaceSmall,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterScreen()));
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
              InsuranceContainer(
                borderColor: choose.custodianAlliedInsuance
                ? Styles.colorLightgreen
                : Styles.colorBoxBorder,
                backroundColor: choose.custodianAlliedInsuance
                ? Styles.colorLightLemon
                : Styles.colorBoxBackground,
                title: 'Custodian & Allied Insurance',
                coverNumber: '2',
                policyYear: '1',
                price: '1000',
                image: 'images/Bitmap.png',
                onTap: (){
                  choose.toggleCustodianAlliedInsurance();
                  print('hello');
                },
                
              ),
              verticalSpaceMedium,
              InsuranceContainer(
                  borderColor: choose.leadwayInsurance
                ? Styles.colorLightgreen
                : Styles.colorBoxBorder,
                backroundColor: choose.leadwayInsurance
                ? Styles.colorLightLemon
                : Styles.colorBoxBackground,
                title: 'Leadway Assurance Plc',
                coverNumber: '2',
                policyYear: '1',
                price: '1000',
                image: 'images/Bitmap2.png',
              
                 onTap: (){
                  choose.toggleLeadwayInsurance();
                  print('hello');
                },
              ),
              verticalSpaceMedium,
              InsuranceContainer(
                  borderColor: choose.allianceInsurance
                ? Styles.colorLightgreen
                : Styles.colorBoxBorder,
                backroundColor: choose.allianceInsurance
                ? Styles.colorLightLemon
                : Styles.colorBoxBackground,
                title: 'Alliance Nigeria Insurance Plc',
                coverNumber: '2',
                policyYear: '1',
                price: '1000',
                image: 'images/Bitmap5.png',
                  onTap: (){
                  choose.toggleAllianceInsurance();
                  print('hello');
                },
              ),
              verticalSpaceMedium,
              InsuranceContainer(
                  borderColor: choose.maniardInsurance
                ? Styles.colorLightgreen
                : Styles.colorBoxBorder,
                backroundColor: choose.maniardInsurance
                ? Styles.colorLightLemon
                : Styles.colorBoxBackground,
                title: 'Maniard Insurance Plc',
                coverNumber: '2',
                policyYear: '1',
                price: '1000',
                image: 'images/Bitmap4.png',
                onTap: (){
                  choose.togglemaniardInsurance();
                  print('hello');
                },
              ),
              verticalSpaceMedium,
              verticalSpaceTiny,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomButton(
                      title: 'CONTINUE',
                      fontSize: 12,
                      height: 50,
                      buttonColor: Styles.appBackground1,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CarUploadScreen5()));
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
                        print(choose.twoStepVerification
                        );
                        print('hello');
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));
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
      ),
      ),
    );
  }
}
