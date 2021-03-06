import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textspan_widget.dart';

class SetupProfileSheet extends StatefulWidget {
  const SetupProfileSheet({Key key}) : super(key: key);

  @override
  _SetupProfileSheetState createState() => _SetupProfileSheetState();
}

class _SetupProfileSheetState extends State<SetupProfileSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: MediaQuery.of(context).viewInsets,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomIcon(onPressed: () => Navigator.of(context).pop()),
                CustomText(
                  'Sort By',
                  fontSize: 14,
                  color: Styles.colorBlack,
                  fontWeight: FontWeight.w700,
                ),
                Container(
                  width: 32,
                ),
              ],
            ),
            verticalSpaceMedium,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: types.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                        print(index);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(2),
                              height: 17,
                              width: 17,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  // color: Styles.colorGrey,
                                  border: selectedindex == index
                                      ? Border.all(
                                          color: Styles.colorBlue1, width: 2)
                                      : Border.all(color: Styles.colorGrey)),
                              child: selectedindex == index
                                  ? Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Styles.colorBlue1),
                                    )
                                  : SizedBox()),
                          horizontalSpaceSmall,
                          RichText(
                            textAlign: TextAlign.center,
                            text: customTextSpan(
                              text: '${types[index]}: ',
                              context: context,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Styles.colorBlack,
                              children: <TextSpan>[
                                customTextSpan(
                                    text: typeTwo[index],
                                    context: context,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: selectedindex == index
                                        ? Styles.colorBlack
                                        : Styles.colorGrey,
                                    onTap: () {}),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            verticalSpaceSmall,
            CustomButton(
              title: 'Apply',
              fontSize: 12,
              height: 50,
              buttonColor: Styles.colorBlue3,
              onPressed: () {
                selectedindex == null
                    ? log('no object selected')
                    : log('$selectedindex has been picked');
              },
            ),
          ],
        ),
      ),
    );
  }

  int selectedindex;
  List<String> types = <String>['Best', 'Price', 'Policy Term', 'Cover'];
  List<String> typeTwo = <String>[
    'Matched',
    'Highest to Lowest',
    'Lowest to Highest',
    'Lowest to Highest'
  ];
}
