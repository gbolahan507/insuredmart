import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insure_marts/widget/export.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _address = TextEditingController();
  XFile _image;
  final _picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Utils.offKeyboard(context),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Profile',
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey[200])),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: _image != null
                            ? FileImage(File(_image.path))
                            : AssetImage(
                                'images/prof.png',
                              )),
                  ),
                  horizontalSpaceMedium,
                  CustomButton(
                    title: 'UPLOAD IMAGE',
                    fontSize: 10,
                    height: 35,
                    width: 150,
                    buttonColor: Styles.colorBlue3,
                    onPressed: () => takephoto(ImageSource.gallery),
                  )
                ],
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'First Name',
                hintText: 'Oluwafem',
                controller: _firstName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Last Name',
                hintText: 'Aramide',
                controller: _lastName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Email Address',
                hintText: 'aramide@gmail.com',
                controller: _email,
              ),
              verticalSpaceMedium,
              Row(
                children: [
                  CustomText(
                    'Gender',
                    fontSize: 14,
                    color: Styles.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              verticalSpaceTiny,
              GenderDropdown(),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Date of Birth',
                hintText: 'joshua',
                controller: _lastName,
              ),
              verticalSpaceMedium,
              CustomTextField(
                title: 'Home Address',
                hintText: 'Number 5, Lekii Aja Lagos',
                controller: _address,
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
              CustomButton(
                title: 'APPLY',
                fontSize: 14,
                height: 50,
                onPressed: () {},
              ),
              verticalSpaceMedium,
              verticalSpaceSmall,
            ],
          ),
        ),
      ),
    );
  }

  takephoto(ImageSource source) async {
    final _imageFile = await _picker.pickImage(source: source);
    setState(() {
      _image = _imageFile;
    });
  }
}
