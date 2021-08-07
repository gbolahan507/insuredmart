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

  Headings({this.text});
}

List<Headings> headings = <Headings>[
  Headings(text: 'Car Front (optional)'),
  Headings(text: 'Car Left Side (optional)'),
  Headings(text: 'Car Right Side (optional)'),
  Headings(text: 'Car Back (optional)'),
  Headings(text: 'Car Interior 1, (optional)'),
  Headings(text: 'Car Interior 2, (optional)'),
  Headings(text: 'Car Interior 3, (optional)'),
];
