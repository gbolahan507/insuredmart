import 'package:flutter/material.dart';
import 'package:insure_marts/ui/claim/my_claim_screen.dart';
import 'package:insure_marts/ui/dashboard/home_screen.dart';
import 'package:insure_marts/ui/my_insurance/my_insurance_screen.dart';
import 'package:insure_marts/ui/profile/profile_screen.dart';
import 'package:insure_marts/util/styles.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    MyInsuranceScreen1(),
    MyClaimScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  Future<bool> _onWillPop() async {
    print("on will pop");

    if (_selectedIndex == 0) return true;

    setState(() {
      _selectedIndex = 0;
      print(_selectedIndex);
    });

    return false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.grey[100],
              onTap: (index) => setState(() => _selectedIndex = index),
              currentIndex: _selectedIndex,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Styles.colorNavGreen,
              unselectedItemColor: Styles.colorBlack.withOpacity(0.5),
              selectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              unselectedLabelStyle:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.verified,
                  ),
                  label: 'My Insurance',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.work_outline,
                  ),
                  label: 'My Claim',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ])),
    );
  }
}
