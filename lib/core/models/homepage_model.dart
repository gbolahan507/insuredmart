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
    title: 'Fire Insurance',
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
    image: 'images/house.png',
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
    image: 'images/house.png',
    title: 'Burglary Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/house.png',
    title: 'Gadget Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/house.png',
    title: 'Travel Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
  HomePageModel(
    image: 'images/house.png',
    title: 'Personal Accidental Insurance',
    contents:
        'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),
];
