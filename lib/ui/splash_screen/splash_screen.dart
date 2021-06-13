import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insure_marts/core/view_model/startup_vm.dart';
import 'package:insure_marts/locator.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/util/constant/routes.dart';
import 'package:insure_marts/util/navigator.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/size_calculator.dart';




// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {

//    void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.push(context,
//             MaterialPageRoute(builder: (context) => OnboardingScreen1())));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         height: screenHeight(context),
//           width: screenWidth(context),
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//       begin: Alignment.topCenter,
//       end: Alignment.bottomCenter,
//       colors: [Styles.appBackground1, Styles.appBackground2])
//   ),

          
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//                Image.asset(
//                       'images/logo.png',
//                       width: screenAwareSize(93, context, width: true),
                       
//                     ),
//             ],
//           )
//       ),
     
      
//     );
//   }
// }







class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<StartUpViewModel>(
      onModelReady: (StartUpViewModel model) => model.isLoggedIn(),
      builder: (_, StartUpViewModel model, __) => Scaffold(
          body:  Container(
        height: screenHeight(context),
          width: screenWidth(context),
          decoration: BoxDecoration(
            gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Styles.appBackground1, Styles.appBackground2])
  ),

          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Image.asset(
                      'images/logo.png',
                      width: screenAwareSize(93, context, width: true),
                       
                    ),
            ],
          )
      ),),
    );
  }
}
