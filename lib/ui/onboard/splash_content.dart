

class OnboardingContent {
  String title1, title2, description1, description2, image;
  double letterSpacing;

  OnboardingContent({
  this.title1,
  this.title2,
  this.image,
  this.description1,
  this.description2,
  this.letterSpacing,

});
}

List<OnboardingContent> body = [

  OnboardingContent(
    image: 'images/image1.png',
    title1: 'Easy & Flexible\nInsurance',
    description1: 'We deliver simple, flexible & value adding\nadding insurance products',
 
  ),
    OnboardingContent(
    image: 'images/image2.png',
    title1: 'True Customer\nCentricity',
    description1: 'We are committed to providing superior\ncustomer experience',
   
  ),
    OnboardingContent(
    image: 'images/image3.png',
    title1: 'Faster Claims\nSettlement',
    description1: 'We settle for all your claims\nbetween 10-30 minutes',
    
  ),

];
