import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/all_dropdown_model.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dropdownContainer.dart';
import 'package:insure_marts/widget/export.dart';

class RegDropDown extends StatelessWidget {
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
                  'Reg number',
                  fontSize: 14,
                  color: Styles.colorBlack.withOpacity(0.8),
                ),
              ),
              value: model.selectedRegNumber,
              items: model.registrationList
                  .map<DropdownMenuItem<String>>((final String value) {
                return DropdownMenuItem(
                  value: value,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (selectedItem) {
                model.selectedRegNumber = selectedItem;
              }),
        ),
      );
    });
  }
}
