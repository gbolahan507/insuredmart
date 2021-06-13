import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen2.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/custom_textfield.dart';
import 'package:insure_marts/widget/size_calculator.dart';


class CarUploadScreen1 extends StatelessWidget {
  final _carBrand = TextEditingController();
  final _carModel = TextEditingController();
  final _mYear = TextEditingController();
  final _rNumber = TextEditingController();
  final _cNumber = TextEditingController();
  final _eNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
          color: Styles.colorWhite,
          child: ListView(
            children: [
              SizedBox(height: screenAwareSize(40, context),),
        Padding(
          padding: const EdgeInsets.only(left:20),
          child: Row(
          children: [
            CustomIcon(
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            horizontalSpaceTiny,
            CustomText('New plan' , color: Styles.colorBlack, letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 20,),
          ],
      ),
        ),    
          verticalSpaceMedium,
       CarUploadHeader(
         steps: 'step 1 0f 5',
         title: 'Car Details',
         indicatorwidth: 0.20,
         forwardOntap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));

         },
       ),
       verticalSpaceMedium,

       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Column(
           children: [
             CustomTextField(
               title: 'Car Brand',
               controller: _carBrand,
               hintText: 'e.g Toyota',
               validator: (val) => val .isEmpty ? 'Enter car brand' : null,
             ),
          
         verticalSpaceSmall,
         verticalSpaceMedium,
         CustomTextField(
           title: 'Car Model',
           controller: _carModel,
           hintText: 'e.g Camry',
           validator: (val) => val .isEmpty ? 'Enter car brand' : null,

         ),
         verticalSpaceSmall,
         verticalSpaceMedium,
         CustomTextField(
           title: 'Manufacture Year',
           controller: _mYear,
           hintText: 'e.g 2014',
           validator: (val) => val .isEmpty ? 'Enter car brand' : null,

         ),
         verticalSpaceSmall,
         verticalSpaceMedium,
         CustomTextField(
           title: 'Registration Number',
           controller: _rNumber,
           hintText: '10-digit number',
           validator: (val) => val .isEmpty ? 'Enter car brand' : null,

         ),
         verticalSpaceSmall,
         verticalSpaceMedium,
         CustomTextField(
           title: 'Chasis Number',
           controller: _cNumber,
           hintText: '10-digit number',
           validator: (val) => val .isEmpty ? 'Enter car brand' : null,

         ),
         verticalSpaceSmall,
         verticalSpaceMedium,
         CustomTextField(
           title: 'Engine Number',
           controller: _eNumber,
           hintText: '10-digit number',
           validator: (val) => val .isEmpty ? 'Enter car brand' : null,

         ),
         verticalSpaceSmall,
         verticalSpaceMedium,

           CustomButton(
               title: 'CONTINUE',
               fontSize: 12,
               height: 50,
               buttonColor: Styles.appBackground1,
               onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));

               },
               
             ),
             verticalSpaceSmall,

             CustomButton(
               title: 'SAVE & CONTINUE LATER',
               fontSize: 12,
               height: 50,
               textColor: Styles.appBackground1,
               buttonColor: Styles.colorWhite,
               onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));

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
}


