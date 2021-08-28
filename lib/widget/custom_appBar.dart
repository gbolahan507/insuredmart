import 'package:flutter/material.dart';
import 'package:insure_marts/ui/dashboard/dashboard_notification.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/export.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool check;
  final color, textColor;
  final Widget actions;
  final Function onPressed;
  final bool backbutton;
  const CustomAppBar({
    this.title,
    this.color,
    this.actions,
    this.textColor,
    this.onPressed,
    this.backbutton = true,
    this.check = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleSpacing: 0.0,
        backgroundColor: color,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        title: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    backbutton == true
                        ? CustomIcon(
                            onPressed: () => Navigator.pop(context),
                          )
                        : SizedBox(),
                    horizontalSpaceTiny,
                    CustomText(
                      '$title',
                      fontSize: 16,
                      color: textColor ?? Styles.colorBlack,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                )),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  check
                      ? actions ??
                          CustomIcon(
                            icon: Icons.notifications,
                            onPressed: () =>
                                routeTo(context, DashBoardNotification()),
                          )
                      : SizedBox()
                ],
              ),
            ),
          )
        ]);
  }
}
