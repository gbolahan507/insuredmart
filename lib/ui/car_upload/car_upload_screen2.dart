import 'dart:io';
import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/testmodel.dart';
import 'package:insure_marts/widget/bottomsheet/save_continue_sheet.dart';
import 'package:insure_marts/widget/export.dart';
import 'package:image_picker/image_picker.dart';

class CarUploadScreen2 extends StatefulWidget {
  @override
  _CarUploadScreen2State createState() => _CarUploadScreen2State();
}

class _CarUploadScreen2State extends State<CarUploadScreen2> {
  List<Object> images = <Object>[];
  // List<String> heading = <String>[];
  Future<XFile> _imageFile;
  final _picker = ImagePicker();
  Image imagesSave;
  List name = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
      images.add("Add Image");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'New Car Insurance',
        ),
      ),
      body: Container(
        color: Styles.colorWhite,
        child: ListView(
          children: [
            CarUploadHeader(
              steps: 'step 2 0f 5',
              title: 'Upload Car Images',
              indicatorwidth: 0.40,
              forwardOntap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CarUploadScreen3()));
              },
            ),
            verticalSpaceSmall,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  if (images[index] is ImageUploadModel) {
                    ImageUploadModel uploadModel = images[index];
                    return Container(
                      margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  CustomText(
                                    heads(index),
                                    fontWeight: FontWeight.w600,
                                    color: Styles.colorBlack.withOpacity(0.8),
                                  ),
                                ],
                              ),
                              verticalSpaceSmall,
                              InkWell(
                                  onTap: () =>
                                      takephoto(index, ImageSource.gallery),
                                  child: CustomContainer(
                                      padding: EdgeInsets.all(0),
                                      height: 70.0,
                                      widget: Image.file(
                                        File(uploadModel.imageFile?.path ??
                                            'images/uploadimage.png'),
                                        fit: BoxFit.fill,
                                      ))),
                            ],
                          )
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomText(
                                heads(index),
                                fontWeight: FontWeight.w600,
                                color: Styles.colorBlack.withOpacity(0.8),
                              ),
                            ],
                          ),
                          verticalSpaceSmall,
                          InkWell(
                            onTap: () => takephoto(index, ImageSource.gallery),
                            child: CustomContainer(
                                padding: EdgeInsets.all(0),
                                height: 70.0,
                                widget: Center(
                                    child: Image.asset(
                                  'images/uploadimage.png',
                                  width: 120,
                                ))),
                          ),
                        ],
                      ),
                    );
                  }
                }),
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  CustomButton(
                    title: 'CONTINUE',
                    fontSize: 12,
                    height: 50,
                    buttonColor: Styles.colorBlue3,
                    onPressed: () {
                      routeTo(context, CarUploadScreen3());
                    },
                  ),
                   verticalSpaceMedium,
                  CustomButton(
                    title: 'SAVE & CONTINUE LATER',
                    fontSize: 12,
                    height: 50,
                    textColor: Styles.colorBlue3,
                    buttonColor: Styles.colorWhite,
                    onPressed: () {
                      save(context);
                    },
                  ),
                  verticalSpaceMedium,
                  verticalSpaceSmall
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void save(BuildContext context) => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SaveBottomSheet();
      });

  void takephoto(int index, ImageSource source) async {
    setState(() {
      _imageFile = _picker.pickImage(source: source);
      getFileImage(index);
    });
  }

  void getFileImage(int index) async {
//    var dir = await path_provider.getTemporaryDirectory();

    _imageFile.then((file) async {
      setState(() {
        ImageUploadModel imageUpload = new ImageUploadModel();
        imageUpload.isUploaded = false;
        imageUpload.uploading = false;
        imageUpload.imageFile = file;
        imageUpload.imageUrl = '';
        images.replaceRange(index, index + 1, [imageUpload]);
      });
    });
  }

  String heads(int i) {
    final Headings headl = headings[i];
    return headl.text;
  }
}
