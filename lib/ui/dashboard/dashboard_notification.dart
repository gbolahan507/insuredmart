import 'package:flutter/material.dart';
import 'package:insure_marts/core/view_model/others_vm.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_appBar.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:intl/intl.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:flutter/cupertino.dart';

class DashBoardNotification extends StatefulWidget {
  @override
  _DashBoardNotificationState createState() => _DashBoardNotificationState();
}

class _DashBoardNotificationState extends State<DashBoardNotification> {
  @override
  Widget build(BuildContext context) {
    return BaseView<OthersViewModel>(
        onModelReady: (OthersViewModel model) => model.getNotification(),
        builder: (_, OthersViewModel model, __) {
          return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: CustomAppBar(
                  title: 'Notification',
                  check: true,
                  actions: GestureDetector(
                    onTap: () {
                      for (var i in model.notification) {
                        setState(() {
                          i.newMessage = false;
                        });
                      }
                    },
                    child: CustomText(
                      'Mark all as read',
                      fontSize: 12,
                      color: Styles.appBackground,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              body: model.busy
                  ? Center(child: CupertinoActivityIndicator())
                  : Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ListView.builder(
                          itemCount: model.notification?.length ?? 0,
                          itemBuilder: (context, index) {
                            return buildNotification(model, index);
                          }),
                    ));
        });
  }

  buildNotification(OthersViewModel model, int index) {
    return ListTileMoreCustomizable(
      leading: CustomIcon(
          icon: Icons.notifications,
          color: model.notification[index].newMessage
              ? Styles.colorBlue3
              : Styles.colorGrey),
      title: CustomText(
        '${model.notification[index].heading}',
        color: Styles.colorBlue3,
        textAlign: TextAlign.left,
        fontWeight: FontWeight.bold,
      ),
      subtitle: Column(
        children: [
          CustomText(
            '${model.notification[index].content}',
            textAlign: TextAlign.left,
            topMargin: 5,
            fontSize: 12,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            color: Styles.colorBlack,
          ),
          Row(
            children: [
              CustomText(
                '$dateTime',
                fontSize: 12,
                topMargin: 10,
                textAlign: TextAlign.start,
              ),
            ],
          ),
          verticalSpaceSmall,
          Row(
            children: [
              Container(
                width: 150,
                child: CustomButton(
                  height: 40,
                  title: '${model.notification[index].buttonText}',
                  fontSize: 10,
                ),
              ),
            ],
          ),
          verticalSpaceMedium30,
        ],
      ),
      horizontalTitleGap: 0.0,
      minVerticalPadding: 0.0,
      minLeadingWidth: 30.0,
      onTap: (details) {},
      onLongPress: (details) {},
    );
  }

  final String formatter = DateFormat('yMd').format(DateTime.now());

  final String dateTime =
      DateFormat('MM/dd/yyyy hh:mm a').format(DateTime.now());

  String formattedDate =
      DateFormat('kk:mm:ss \n EEE d MMM').format(DateTime.now());
}
