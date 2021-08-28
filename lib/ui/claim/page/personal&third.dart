import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:insure_marts/ui/car_upload/testmodel.dart';
import 'package:insure_marts/core/models/all_dropdown_model.dart';
import 'package:insure_marts/ui/my_insurance/dropdown/reg_number_dropdown.dart';
import 'package:insure_marts/widget/export.dart';

class PersonalThirdPartyClaim extends StatefulWidget {
  PersonalThirdPartyClaim({
    Key key,
  }) : super(key: key);

  @override
  _PersonalThirdPartyClaimState createState() =>
      _PersonalThirdPartyClaimState();
}

class _PersonalThirdPartyClaimState extends State<PersonalThirdPartyClaim> {
  final phoneNumberController = TextEditingController();
  final lossDescriptionController = TextEditingController();
  final repairsController = TextEditingController();
  List<Object> images = <Object>[];
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
    return Consumer<AllDropDownModel>(builder: (_, AllDropDownModel model, __) {
      return Container(
        child: Column(
          children: [
            Row(
              children: [
                CustomText(
                  'Reg number of damaged car',
                  color: Styles.colorBlack.withOpacity(0.8),
                  bottomMargin: 5,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
            RegDropDown(),
            verticalSpaceMedium30,
            CustomTextField(
              title: 'Date of Loss/accident',
              hintText: 'Date of loss/accident',
            ),
            verticalSpaceMedium30,
            CustomTextField(
              title: 'Mechanic or Engineer Contact Number',
              hintText: '09065432714',
              controller: phoneNumberController,
            ),
            verticalSpaceMedium30,
            CustomTextField(
              title: 'Estimate of repairs',
              hintText: 'repairs estimate',
              controller: repairsController,
            ),
            verticalSpaceMedium30,
            CustomTextField(
              title: 'Description of Loss/accident',
              hintText: 'description',
              controller: lossDescriptionController,
              maxLines: 5,
            ),
            verticalSpaceMedium30,
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  if (images[index] is ImageUploadModel) {
                    ImageUploadModel uploadModel = images[index];
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomText(
                                  heads(index),
                                  textAlign: TextAlign.start,
                                  color: Styles.colorBlack.withOpacity(0.8),
                                  fontWeight: FontWeight.w700,
                                ),
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
                                    File(uploadModel.imageFile.path),
                                    fit: BoxFit.fill,
                                  )))
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomText(
                                  heads(index),
                                  textAlign: TextAlign.start,
                                  color: Styles.colorBlack.withOpacity(0.8),
                                  fontWeight: FontWeight.w700,
                                ),
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
            CustomButton(
              height: 50,
              title: 'CONTINUE',
              fontSize: 12,
              onPressed: () {
                print(model.selected.length.toString());
              },
            ),
            verticalSpaceMedium30,
          ],
        ),
      );
    });
  }

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
    return headl.personal$thirdPartClaimHeading;
  }
}
