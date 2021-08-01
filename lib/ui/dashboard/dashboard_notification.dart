import 'package:flutter/material.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_appBar.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

class DashBoardNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Notification',
          check: true,
          widget: CustomText(
            'Mark all as read',
            fontSize: 12,
            color: Styles.appBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTileMoreCustomizable(
            leading: CustomIcon(
              icon: Icons.notifications,
            ),
            title: CustomText(
              'Your Claim has been approved',
              textAlign: TextAlign.left,
            ),
            subtitle: CustomText(
              'Your Claim has been approved',
              textAlign: TextAlign.left,
              topMargin: 10,
            ),
            trailing: Icon(Icons.people),
            horizontalTitleGap: 0.0,
            minVerticalPadding: 0.0,
            minLeadingWidth: 40.0,
            onTap: (details) {},
            onLongPress: (details) {},
          ),
        ],
      ),
    );
  }
}
