import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_container.dart';

class DropDownContainer extends StatelessWidget {
  final Widget child;
  const DropDownContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return CustomContainer(
      containerColor: Styles.colorBoxBackground,
      borderColor: Styles.colorBoxBorder.withOpacity(0.4),
      borderWidth: 1.0,
      boxShadow: <BoxShadow>[
        BoxShadow(spreadRadius: 0.10, color: Styles.colorGrey, blurRadius: 0.1),
      ],
      padding: EdgeInsets.symmetric(vertical: 0),
      widget: child,
    );
  }
}
