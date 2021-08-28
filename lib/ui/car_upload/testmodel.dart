import 'package:image_picker/image_picker.dart';

class ImageUploadModel {
  bool isUploaded;
  bool uploading;
  XFile imageFile;
  String imageUrl;

  ImageUploadModel({
    this.isUploaded,
    this.uploading,
    this.imageFile,
    this.imageUrl,
  });
}

class Headings {
  String text;
  String personalClaimHeading;
  String personal$thirdPartClaimHeading;
  String thirdPartyClaimHeading;



  Headings(
      {this.text,
      this.personalClaimHeading,
      this.personal$thirdPartClaimHeading,
      this.thirdPartyClaimHeading});
}

List<Headings> headings = <Headings>[
  Headings(
    text: 'Car Front (optional)',
    personalClaimHeading: 'Record yourself narrating incident (optional)',
    personal$thirdPartClaimHeading:
        'Record yourself narrating incident (optional)',
    thirdPartyClaimHeading: 'Record yourself narrating incident (optional)',
  ),
  Headings(
    text: 'Car Left Side (optional)',
    personalClaimHeading: 'Upload Sworn Affidavict or Police Report',
    personal$thirdPartClaimHeading: 'Upload Sworn Affidavict or Police Report',
    thirdPartyClaimHeading: 'Upload Sworn Affidavict or Police Report',
  ),
  Headings(
    text: 'Car Right Side (optional)',
    personalClaimHeading:
        'Upload image or picture of damage while showing registration number 1',
    personal$thirdPartClaimHeading: 'Interim police report (theft)',
    thirdPartyClaimHeading: 'Final police report (theft)',
  ),
  Headings(
    text: 'Car Back (optional)',
    personalClaimHeading:
        'Upload image or picture of damage while showing registration number 2',
    personal$thirdPartClaimHeading: 'Final police report (theft)',
    thirdPartyClaimHeading: 'Final police report (theft)',
  ),
  Headings(
    text: 'Car Interior 1, (optional)',
    personalClaimHeading: 'Upload more images of damage (optional)',
    personal$thirdPartClaimHeading:
        'Upload image or picture of damage while showing registration number 1',
    thirdPartyClaimHeading:
        'Upload image or picture of 3rd party damage while showing registration number 1',
  ),
  Headings(
    text: 'Car Interior 2, (optional)',
    personalClaimHeading: 'Upload more images of damage (optional)',
    personal$thirdPartClaimHeading:
        'Upload image or picture of damage while showing registration number 2',
    thirdPartyClaimHeading:
        'Upload image or picture of 3rd party damage while showing registration number 2',
  ),
  Headings(
      text: 'Car Interior 3, (optional)',
      personalClaimHeading: 'Upload more images of damage (optional)',
      personal$thirdPartClaimHeading:
          'Upload image or picture of 3rd party damage while showing registration number 1',
      thirdPartyClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
  Headings(
      text: 'Car Interior 4, (optional)',
      personalClaimHeading: 'Upload more images of damage3 (optional)',
      personal$thirdPartClaimHeading:
          'Upload image or picture of 3rd party damage while showing registration number 2',
      thirdPartyClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
  Headings(
    text: 'Car Interior 5, (optional)',
    personalClaimHeading: 'Upload more images of damage4 (optional)',
    personal$thirdPartClaimHeading: 'Upload more images of damage (optional)',
    thirdPartyClaimHeading: 'Upload more images of 3rd party damage (optional)',
  ),
  Headings(
      text: 'Car Back (optional)',
      personalClaimHeading:
          'Upload image or picture of damage while showing registration number 2',
      personal$thirdPartClaimHeading: 'Upload more images of damage (optional)',
      thirdPartyClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
  Headings(
      text: 'Car Interior 1, (optional)',
      personalClaimHeading: 'Upload more images of damage (optional)',
      personal$thirdPartClaimHeading:
          'Upload more images of damage (optional)'),
  Headings(
      text: 'Car Interior 2, (optional)',
      personalClaimHeading: 'Upload more images of damage (optional)',
      personal$thirdPartClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
  Headings(
      text: 'Car Interior 3, (optional)',
      personalClaimHeading: 'Upload more images of damage2 (optional)',
      personal$thirdPartClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
  Headings(
      text: 'Car Interior 4, (optional)',
      personalClaimHeading: 'Upload more images of damage3 (optional)',
      personal$thirdPartClaimHeading:
          'Upload more images of 3rd party damage (optional)'),
];
