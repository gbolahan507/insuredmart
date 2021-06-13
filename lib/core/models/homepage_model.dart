

class HomePageModel {
  final String image, title,  contents;
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
    title: 'Car Insurance',
    contents: 'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    // status: true,
  ),
    HomePageModel(
    image: 'images/health.png',
    title: 'Health Insurance',
    contents: 'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),

  HomePageModel(
    image: 'images/life.png',
    title: 'Life Insurance',
    contents: 'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),

  HomePageModel(
    image: 'images/house.png',
    title: 'Home Insurance',
    contents: 'At faucibus etiam vel lobortis enim fermentum a. At nec enim tellus senectus turpis auctor pretium non.',
    status: false,
  ),

];