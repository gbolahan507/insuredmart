import 'package:flutter/material.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/dot_circle.dart';
import 'package:insure_marts/widget/size_calculator.dart';




class CarUploadHeader extends StatelessWidget {

  final String steps, title;
  final double indicatorwidth;
  final Function forwardOntap;
  const CarUploadHeader({
    Key key, this.steps, this.forwardOntap, this.title, this.indicatorwidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
             color: Styles.colorBlack.withOpacity(0.1),
             height: screenAwareSize(12, context),
             width: double.infinity,
             child: Row(
               children: [
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(8.5),
                       bottomRight: Radius.circular(8.5),
                     ),
                     color: Styles.colorLightBlue,
                   ),
                   height: screenAwareSize(12, context),
                   width:  screenWidth(context) * indicatorwidth
                 ),
               ],
             ),
           ),
      
       Container(
         padding: EdgeInsets.symmetric(horizontal:20, vertical: 10 ),
         width: double.infinity,
         color: Styles.colorLightgreen.withOpacity(0.1),
         child: Row(
           children: [
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 CustomText( '$steps', fontSize: 12, color: Styles.colorBlack.withOpacity(0.5),),
                 verticalSpaceSmall,
                 CustomText('$title', fontSize: 14, fontWeight: FontWeight.bold, color: Styles.colorBlack)
               ],
             ),
             Spacer(),

             DotCircle(
               onTap: (){
                 Navigator.pop(context);
               },
               padding: EdgeInsets.only(left:4),
             ),
             horizontalSpaceMedium,
             DotCircle(
               onTap: forwardOntap,
               icon: Icons.arrow_forward_ios,
               // padding: EdgeInsets.only(right:4),

             ),

             

           ],
         ),

       )
       ],
    );
  }
}
