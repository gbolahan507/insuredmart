import 'dart:collection';
import 'package:insure_marts/core/view_model/base_vm.dart';

class AllDropDownModel extends BaseModel {
  final List<String> _items = <String>[
    "Personal",
    "Personal & 3rd Party",
    "3rd party only",
  ];
  String _selectedItem;

  UnmodifiableListView<String> get items {
    return UnmodifiableListView(
      this._items,
    );
  }

  String get selected {
    return this._selectedItem;
  }

  set selected(
    final String item,
  ) {
    this._selectedItem = item;
    this.notifyListeners();
  }

  final List<String> _insuranceType = <String>[
    'Car Insurance',
    'House Insurance',
    'Company Insurance',
    'Life Insurance',
  ];

  String _selectedInsurance;

  UnmodifiableListView<String> get insurance {
    return UnmodifiableListView(this._insuranceType);
  }

  String get insuranceSelected {
    return this._selectedInsurance;
  }

  set insuranceSelected(
    final String item,
  ) {
    this._selectedInsurance = item;
    this.notifyListeners();
  }

  final List<String> _registratioNumber = <String>[
    '86#648464',
    '92739#733',
    '2000000',
    '452768889',
  ];

  String _selectedRegNumber;

  UnmodifiableListView<String> get registrationList {
    return UnmodifiableListView(this._registratioNumber);
  }

  String get selectedRegNumber {
    return this._selectedRegNumber;
  }

  set selectedRegNumber(
    final String item,
  ) {
    this._selectedRegNumber = item;
    this.notifyListeners();
  }

  final List<String> _bank = <String>[
    'First Bank',
    'Access Bank',
    'GT BANK',
    'Wema Bank',
  ];

  String _selectedBank;

  UnmodifiableListView<String> get bankList {
    return UnmodifiableListView(this._bank);
  }

  String get selectedBank {
    return this._selectedBank;
  }

  set selectedBank(
    final String item,
  ) {
    this._selectedBank = item;
    this.notifyListeners();
  }
}
