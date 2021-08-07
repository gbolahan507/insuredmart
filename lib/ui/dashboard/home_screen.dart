import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/homepage_model.dart';
import 'package:insure_marts/core/storage/local_storage.dart';
import 'package:insure_marts/ui/dashboard/home_appbar.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/bottomsheet/car_inurance_sheet.dart';
import 'package:insure_marts/widget/bottomsheet/check_profile_sheet.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';




class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bool comingSoon = false;

  var profile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: MyAppBar(),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      print(AppCache.getUser().user.email);
                    },
                    child: CustomText(
                      'Which insurance do you want to get?',
                      color: Styles.appBackground2,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              verticalSpaceSmall,
              ListView.builder(
                  itemCount: homepageModel.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final HomePageModel homepages = homepageModel[index];
                    return HomePageBox(
                      hompage: homepages,
                      image: homepages.image,
                      title: homepages.title,
                      contents: homepages.contents,
                      status: homepages.status,
                      onPressed: () {
                        index == 0
                            ? setState(() {
                                profile = !profile;
                                showProfile();
                              })
                            : print(index);
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }

  void showProfile() => showModalBottomSheet(
      context: context,
      builder: (context) {
        return profile == false
            ? ProfileBottomSheet(
                // onPresseButton:
                )
            : CarInsuranceBottomSheet();
      });
}

class HomePageBox extends StatelessWidget {
  final String image, title, contents;
  final bool status;
  final Function onPressed;
  final HomePageModel hompage;

  const HomePageBox({
    Key key,
    this.image,
    this.status,
    this.title,
    this.hompage,
    this.contents,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Styles.appBackground1, Styles.appBackground2])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              '$image',
            ),
            verticalSpaceTiny,
            verticalSpaceSmall,
            Row(
              children: [
                CustomText(
                  '$title',
                  fontSize: 14,
                  color: Styles.colorWhite,
                ),
                horizontalSpaceTiny,
                status == false
                    ? Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Styles.colorLightgreen,
                        ),
                        child: CustomText(
                          'coming soon',
                          fontSize: 10,
                          color: Styles.colorWhite,
                        ),
                      )
                    : Container(
                        height: 0,
                        width: 0,
                      )
              ],
            ),
            verticalSpaceSmall,
            CustomText(
              '$contents',
              textAlign: TextAlign.left,
              textheight: 1.5,
              fontSize: 12,
              color: Styles.colorLemon,
            )
          ],
        ),
      ),
    );
  }
}
