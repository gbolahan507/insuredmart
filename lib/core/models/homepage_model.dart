class HomePageModel {
  final String image, title, contents;
  final bool status;

  HomePageModel({
    this.title,
    this.image,
    this.contents,
    this.status = true,
  });
}

List<HomePageModel> homepageModel = [
  HomePageModel(
    image: 'images/car.png',
    title: 'Motor Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    // status: true,
  ),
  HomePageModel(
    image: 'images/health.png',
    title: 'Fire',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/life.png',
    title: 'Life Assurance policies',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/marine.png',
    title: 'Marine Cargo Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/house.png',
    title: 'HouseHolder Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/burglary.png',
    title: 'Burglary Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/gadget.png',
    title: 'Gadget Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/travel.png',
    title: 'Travel Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/accident.png',
    title: 'Personal Accidental Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
];

List<String> extension = [
  'EXCESS BUY BACK  (EBB)',
  'Flood Extension',
  'SRCC Extension',
  'Additional Third Party\nProperty Damage',
  'Vehicle tracking device',
  'Renew tracking device',
  'Renew vehicle license',
  'Renew road worthiness',
  'Renew Hackney Permit',
  'Delete personal effects',
];

class InsuranceTypeModel {
  final String title;
  final String coverNumber;
  final String policyYear;
  final String price;
  final String image;

  InsuranceTypeModel(
      {this.title, this.coverNumber, this.policyYear, this.price, this.image});
}

List<InsuranceTypeModel> insuranceTypeModel = [
  InsuranceTypeModel(
    title: 'Custodian & Allied Insurance',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/Bitmap.png',
  ),
  InsuranceTypeModel(
    title: 'Leadway Assurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/Bitmap2.png',
  ),
  InsuranceTypeModel(
    title: 'Alliance Nigeria Insurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/Bitmap5.png',
  ),
  InsuranceTypeModel(
    title: 'Maniard Insurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/Bitmap4.png',
  ),
  InsuranceTypeModel(
    title: 'NEM Insurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/nem.png',
  ),
  InsuranceTypeModel(
    title: 'Mutual Benefits Assurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/mutual.png',
  ),
  InsuranceTypeModel(
    title: 'Sovereign Trust Insurance PLC',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/strust.png',
  ),
  InsuranceTypeModel(
    title: 'Zenith Insurance PLC',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/zenith.png',
  ),
  InsuranceTypeModel(
    title: 'AIICO Insurance PLC',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/allico.png',
  ),
  InsuranceTypeModel(
    title: 'Consolidated Hallmark Insurance',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/hallmark.png',
  ),
  InsuranceTypeModel(
    title: 'Cornerstone Insurance Plc',
    coverNumber: '2',
    policyYear: '1',
    price: '1000',
    image: 'images/cornerstone.png',
  ),
];
