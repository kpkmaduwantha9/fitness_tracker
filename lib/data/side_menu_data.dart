import 'package:fitness_tracker/models/side_menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final sideMenu = <SideMenu>[
    SideMenu(
      icon: Icons.home,
      title: "DashBoard",
    ),
    SideMenu(
      icon: Icons.person,
      title: "Profile",
    ),
    SideMenu(
      icon: Icons.run_circle,
      title: "Exercise",
    ),
    SideMenu(
      icon: Icons.settings,
      title: "Settings",
    ),
    SideMenu(
      icon: Icons.history,
      title: "History",
    ),
    SideMenu(
      icon: Icons.logout,
      title: "SignOut",
    ),
  ];
}
