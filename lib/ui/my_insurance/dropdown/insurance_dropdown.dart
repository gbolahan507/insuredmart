import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/all_dropdown_model.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dropdownContainer.dart';
import 'package:insure_marts/widget/export.dart';

class InsuranceDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AllDropDownModel>(builder: (_, AllDropDownModel model, __) {
      return DropDownContainer(
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
              isExpanded: true,
              hint: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomText(
                  'Select Insurance',
                  fontSize: 12,
                ),
              ),
              value: model.insuranceSelected,
              items: model.insurance
                  .map<DropdownMenuItem<String>>((final String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomText(
                      value,
                      color: Styles.colorBlack,
                      fontSize: 16,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (selectedItem) {
                model.insuranceSelected = selectedItem;
              }),
        ),
      );
    });
  }
}
