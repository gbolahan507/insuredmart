// import 'package:insure_marts/util/spacing.dart';
// import 'package:insure_marts/widget/custom_button.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/material.dart';

// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   XFile image;
//   String _imagePaths;

//   @override
//   void initState() {
//     super.initState();

//     // _getAppDir.then((value) {
//     //   setState(() => image = '$value/test.jpg');
//     // });

//     loadImage2();
//   }

//   get _getAppDir async {
//     final appDir = await getApplicationDocumentsDirectory();

//     return appDir.path;
//   }

//   // void _uploadImage() async {
//   //   ImagePicker picker = ImagePicker();
//   //   PickedFile pickedImage = await picker.getImage(source: ImageSource.gallery);

//   //   File file = File(pickedImage.path);

//   //   final savedImage = await file.copy('$_getAppDir/test.jpg');

//   //   setState(() => image = savedImage.path);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('UPLOAD IMAGE'),
//       ),
//       body: Column(
//         children: [
//           verticalSpaceMedium,
//           // Center(child: image != null ? Image.file(File(image)) : null),
//           // verticalSpaceMedium,

//           _imagePaths != null
          
//               ?  
//                CircleAvatar(
//                   radius: 50, backgroundImage: FileImage(File(_imagePaths)))
//               : CircleAvatar(
//                   radius: 50,
//                   backgroundImage: image != null
//                       ? FileImage(File(image.path))
//                       : AssetImage(
//                           'images/prof.png',
//                         ),
//                 ),
//           verticalSpaceMedium,

//           CustomButton(
//             height: 50,
//             title: 'Save imgae',
//             onPressed: () => saveImages(image.path),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _uploadImage2,
//         tooltip: 'Increment',
//         child: Icon(Icons.image),
//       ),
//     );
//   }

//   void saveImages(path) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     preferences.setString('myImage', path);
//     print('save');
//   }

//   void _uploadImage2() async {
//     ImagePicker picker = ImagePicker();
//     XFile pickedImage = await picker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       image = pickedImage;
//     });
//   }

//   void loadImage2() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       _imagePaths = preferences.getString('myImage');
//     });
//   }
// }
