import 'package:flutter/material.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dropdownContainer.dart';

class InsuranceDropDown extends StatefulWidget {
  const InsuranceDropDown({Key key}) : super(key: key);

  @override
  _InsuranceDropDownState createState() => _InsuranceDropDownState();
}

class _InsuranceDropDownState extends State<InsuranceDropDown> {
  String _selectedBank;
  List<String> _bank = [
    'Car Insurance',
    'UBA',
    'Gt Bank',
    'Union Bank',
    'Heritage Bank',
    'First Bank',
    'Wema Bank',
  ];

  @override
  Widget build(BuildContext context) {
    return DropDownContainer(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          hint: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomText(
              'Select Insurance',
            ),
          ),
          value:
              _selectedBank, // A global variable used to keep track of the selection
          items: _bank.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  item,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            );
          }).toList(),
          onChanged: (selectedItem) => setState(
            () => _selectedBank = selectedItem,
          ),
        ),
      ),
    );
  }
}
