class PolicyTermModel {
  final String day;
  final String number;

  PolicyTermModel({this.day, this.number});
}

List<PolicyTermModel> policyTerm = [
  PolicyTermModel(day: '6 month', number: '23'),
  PolicyTermModel(day: '1 year', number: '103'),
  PolicyTermModel(day: '2 year', number: '24'),
  PolicyTermModel(day: '3 year', number: '15'),
  PolicyTermModel(day: '4 year', number: '11'),
  PolicyTermModel(day: '5 year', number: '22'),
];

class CoverTermModel {
  final String carType;
  final String number;

  CoverTermModel({this.carType, this.number});
}

List<CoverTermModel> coverTerm = [
  CoverTermModel(carType: '6 month', number: '23'),
  CoverTermModel(carType: '1 year', number: '103'),
  CoverTermModel(carType: '2 year', number: '24'),
  CoverTermModel(carType: '3 year', number: '15'),
  CoverTermModel(carType: '4 year', number: '11'),
  CoverTermModel(carType: '5 year', number: '22'),
];
