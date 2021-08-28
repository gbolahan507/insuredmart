import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/model/filter_model.dart';
import 'package:insure_marts/widget/export.dart';
import 'package:insure_marts/ui/car_upload/widget/policy_term_container.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int policyIndex;
  int coverIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Filter',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            CustomContainer(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                borderColor: Styles.colorGrey.withOpacity(0.5),
                borderWidth: 0.5,
                width: double.infinity,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Policy Term',
                      fontSize: 16,
                      color: Styles.colorBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceTiny,
                    ListView.builder(
                        itemCount: policyTerm.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final policyTermModel = policyTerm[index];
                          return PolicyContainer(
                              title: policyTermModel.day,
                              number: policyTermModel.number,
                              circle: true,
                              border: policyIndex == index
                                  ? Border.all(
                                      color: Styles.colorBlue1, width: 4)
                                  : Border.all(
                                      color: Styles.colorBlack.withOpacity(0.5),
                                      width: 1),
                              dayColor: policyIndex == index
                                  ? Styles.colorBlack
                                  : Styles.colorGrey,
                              termColor: policyIndex == index
                                  ? Styles.colorBlack
                                  : Styles.colorGrey,
                              onTap: () {
                                setState(() {
                                  policyIndex = index;
                                });
                              });
                        })
                  ],
                )),
            verticalSpaceMedium,
            CustomContainer(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
                borderColor: Styles.colorGrey.withOpacity(0.5),
                borderWidth: 0.5,
                width: double.infinity,
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Cover',
                      fontSize: 16,
                      color: Styles.colorBlack,
                      fontWeight: FontWeight.bold,
                    ),
                    verticalSpaceSmall,
                    verticalSpaceTiny,
                    ListView.builder(
                        itemCount: coverTerm.length,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final model = coverTerm[index];
                          return PolicyContainer(
                              title: model.carType,
                              number: model.number,
                              circle: false,
                              squareBoxColor: coverIndex == index
                                  ? Styles.colorBlue3
                                  : Colors.transparent,
                              checkIconColor: coverIndex == index
                                  ? Styles.colorWhite
                                  : Colors.transparent,
                              onTap: () {
                                setState(() {
                                  coverIndex = index;
                                });
                              });
                        }),
                  ],
                )),
            verticalSpaceMedium,
            CustomButton(
              title: 'Apply',
              fontSize: 12,
              height: 50,
              buttonColor: Styles.colorBlue3,
              onPressed: () {
                print('hello');
                print(coverIndex);
                print(policyIndex);
              },
            ),
            verticalSpaceMedium,
            verticalSpaceSmall
          ],
        ),
      ),
    );
  }
}
