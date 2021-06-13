import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen3.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/size_calculator.dart';



class CarUploadScreen2 extends StatelessWidget {
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
            CustomText('New Car Insurance' , color: Styles.colorBlack, letterSpacing: 1, fontWeight: FontWeight.bold, fontSize: 20,),
          ],
      ),
        ),    
          verticalSpaceMedium,
       CarUploadHeader(
         steps: 'step 2 0f 5',
         title: 'Upload Car Images',
         indicatorwidth: 0.40,
         forwardOntap: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen3()));

         },
       ),
       verticalSpaceMedium,
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Column(
             children: [
               CustomButton(
                     title: 'CONTINUE',
                     fontSize: 12,
                     height: 50,
                     buttonColor: Styles.appBackground1,
                     onPressed: (){
  Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen3()));

                     },
                     
                   ),
             ],
           ),
         ),
       ],
              ),
        ),
      
    );
  }
}