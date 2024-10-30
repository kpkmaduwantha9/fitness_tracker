import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  //index tracker
  int selectedIndex = 0;

  final sideMenuData = SideMenuData();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 80,
      ),
      color: backgroundColor,
      child: ListView.builder(
        itemCount: sideMenuData.sideMenu.length,
        itemBuilder: (context, index) {
          return _sideMenuList(sideMenuData, index);
        },
      ),
    );
  }

  Widget _sideMenuList(SideMenuData sideMenuData, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          //print(selectedIndex);
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selectedIndex == index ? selectionColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                sideMenuData.sideMenu[index].icon,
                color: selectedIndex == index ? blackColor : greyColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                sideMenuData.sideMenu[index].title,
                style: TextStyle(
                  color: selectedIndex == index ? blackColor : greyColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
