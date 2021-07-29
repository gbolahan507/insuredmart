import 'package:flutter/material.dart';

import 'package:insure_marts/widget/export.dart';



class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(
          title: 'Profile',
          check: true,
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Styles.colorWhite,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[200])),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      'images/gbolahan2.png',
                    ),
                  ),
                ),
              ],
            ),
            CustomText(
              'Oluwafemi Aramide',
              fontSize: 14,
              color: Styles.colorBlack,
              topMargin: 15,
              bottomMargin: 5,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              'Oluwafemiaramide@gmail.com',
              fontSize: 12,
            ),

            verticalSpaceMedium,

            Divider(
              color: Colors.grey,
            ),
            verticalSpaceMedium,

            CustomRowTile(
                leadingIcon: Icons.edit,
                title: 'Edit Profile',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileScreen()));
                }),
            CustomRowTile(
                checkImage: true,
                image: 'images/cSocials.png',
                title: 'Connect Socials',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConnectSocialsScreen()));
                }),
            CustomRowTile(
                leadingIcon: Icons.payment,
                title: 'My Cards',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCardScreen()));
                }),
            CustomRowTile(
                leadingIcon: Icons.notifications,
                title: 'Notification Settings',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NotificationScreen()));
                }),
            CustomRowTile(
                leadingIcon: Icons.lock,
                title: 'Security & Password',
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecurityPasswordScreen()));
                }),
            CustomRowTile(
                leadingIcon: Icons.share,
                title: 'Share Insurement',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShareScreen()));
                }),
            CustomRowTile(
                // checkImage: true,
                // image: 'images/helpSupport.png',
                leadingIcon: Icons.headset_mic_sharp,
                title: 'Help & Support',
                onTap: () {}),
            CustomRowTile(
                leadingIcon: Icons.info,
                // checkImage: true,
                // image: 'images/about.png',
                title: 'About Us',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutUs()));
                }),

            CustomRowTile(
                checkImage: true,
                image: 'images/logout.png',
                title: 'Logout',
                onTap: () {
                  AppCache.clear();
                  routeToReplace(context, SignupScreen());
                }),
            // Row(

            //
            // )
          ],
        ),
      ),
    );
  }
}

class CustomRowTile extends StatelessWidget {
  final leadingIcon;
  final String title, image;
  final bool checkImage;
  final Function onTap;

  const CustomRowTile(
      {Key key,
      this.leadingIcon,
      this.title,
      this.image,
      this.onTap,
      this.checkImage = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: InkWell(
        onTap: onTap,
        child: Container(
          child: Row(
            children: [
              Container(
                  // color: Colors.red,
                  height: 25,
                  width: 25,
                  child: checkImage
                      ? Image.asset(
                          image,
                        )
                      : CustomIcon(
                          icon: leadingIcon, color: Styles.appBackground2)),
              horizontalSpaceMedium,
              CustomText(title, fontSize: 14, color: Styles.colorBlack),
              Spacer(),
              CustomIcon(
                icon: Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
