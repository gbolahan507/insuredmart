import 'package:flutter/material.dart';
import 'package:insure_marts/widget/export.dart';






class NotificationScreen extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    Provider.of<ToggleData>(context, listen: false).initialdata();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'Notification',
          ),
        ),
        body: Consumer<ToggleData>(
            builder: (_, choose, child) => Container(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Styles.colorWhite,
                    child: ListView(children: [
                      NotificationContainer(
                          title: 'All Notifications',
                          value: choose.allNotification,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          onPressed: (val) {
                            choose.toggleallNotification();
                          }),
                      spacedDivider,
                      NotificationContainer(
                          title: 'News and Promos',
                          value: choose.newsNotification,
                          onPressed: (val) {
                            choose.toggleNewsNotification();
                          }),
                      verticalSpaceMedium,
                      NotificationContainer(
                          title: 'My Insurance Updates',
                          value: choose.insuranceNotification,
                          onPressed: (val) {
                            choose.togglMyInsuranceNotification();
                          }),
                    ])))));
  }
}

class NotificationContainer extends StatelessWidget {
  final String title;
  final bool value;
  final Function onPressed;
  final padding;
  const NotificationContainer({
    Key key,
    this.title,
    this.value,
    this.onPressed,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      // height: screenAwareSize(80, context),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      containerColor: Styles.colorBoxBackground,
      borderColor: Styles.colorBoxBorder,
      widget: Row(
        children: [
          CustomText(
            title,
            fontSize: 14,
            color: Styles.colorBlack,
          ),
          Spacer(),
          CustomSwitch(
            value: value,
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}
