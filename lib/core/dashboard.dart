import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation/screens/fifth.dart';
import 'package:getx_navigation/screens/fourth.dart';
import 'package:getx_navigation/screens/home.dart';
import 'package:getx_navigation/screens/second.dart';
import 'package:getx_navigation/screens/third.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight: 65,
       controller: PersistentTabController(),
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      stateManagement: false,
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            const BoxShadow(
              color: Colors.lightBlue,
              offset: Offset(
                0.0,
                -5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -5.0,
            ), //
          ]),
      popAllScreensOnTapOfSelectedTab: false,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style15,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 100),
        curve: Curves.easeOut,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        duration: Duration(milliseconds: 5000),
      ),
      onItemSelected: (value) async {
      },
    );
  }

  List<Widget> _buildScreens() {
    return [
      Home(),
      const Second(),
      const Third(),
       const Fourth(),
       const Fifth(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.teal,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.report),
        title: ("Report"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.teal,
      ),
      PersistentBottomNavBarItem(
        icon: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
          GestureDetector(
              onTap: () {},
              child: const Icon(Icons.cabin, color: Colors.white,) ),
        ),
        activeColorPrimary: Colors.transparent,
        inactiveColorPrimary: Colors.transparent,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: ("Settings"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.teal,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.dark_mode),
        title: ("Dark Mode"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.teal,
      ),
    ];

  }
}
