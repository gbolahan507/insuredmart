// import 'package:path_provider/path_provider.dart';
// import 'package:flutter/material.dart';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';






// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   var image;

//   @override
//   void initState() {
//     super.initState();

//     // _getAppDir.then( (value) {

//     //   setState(() => image = '$value/test.jpg');

//     // });
    
//   }

//   get _getAppDir async {

//     final appDir = await getApplicationDocumentsDirectory();

//     return appDir.path;

//   }

//   void _uploadImage() async {

//     ImagePicker picker = ImagePicker();
//     XFile pickedImage = await picker.pickImage(source: ImageSource.gallery);

//     File file = File(pickedImage.path);

//     final savedImage = await file.copy('$_getAppDir/test.jpg');
    
//     setState(() => image = savedImage.path );
    
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('hello'),
//       ),
//       body: Center(
//         child: image != null ? Image.file(File(image)) : null
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _uploadImage,
//         tooltip: 'Increment',
//         child: Icon(Icons.image),
//       ),
//     );
//   }
// }