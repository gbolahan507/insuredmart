import 'package:flutter/material.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/ui/dashboard/dashboard_notification.dart';
import 'package:insure_marts/util/router.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_textspan_widget.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0.0,
      automaticallyImplyLeading: false,
      elevation: 0.0,
      title: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: customTextSpan(
                text: 'Hello,  ',
                context: context,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Styles.colorBlack,
                children: <TextSpan>[
                  customTextSpan(
                    text: '${AppCache.getUser().user.fullname.toString()}',
                    context: context,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Styles.appBackground1,
                  ),
                ],
              ),
            ),
          ),
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
                CustomIcon(
                  icon: Icons.notifications,
                  onPressed: () => routeTo(context, DashBoardNotification()),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
