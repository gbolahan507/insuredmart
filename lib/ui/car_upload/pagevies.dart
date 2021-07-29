import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen1.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen2.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen3.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen4.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen5.dart';
import 'package:insure_marts/ui/car_upload/car_upload_screen6.dart';

class PageVies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PageController _controller = PageController(initialPage: 0);

    return PageView(
      controller: _controller,
      scrollDirection: Axis.horizontal,
       children: [
        CarUploadScreen1(),
        CarUploadScreen2(),
        CarUploadScreen3(),
        CarUploadScreen4(),
        CarUploadScreen5(),
        CarUploadScreen6(),
      ],
    );
  }
}
