import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Row(
      children: [
        if (!isDesktop)
          GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.menu,
                color: greyColor,
                size: 25,
              ),
            ),
          ),
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: greyColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: cardBackgroundColor,
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              labelStyle: const TextStyle(
                color: greyColor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                /*borderSide: BorderSide(color: Theme.of(context).primaryColor),*/
                borderSide: const BorderSide(color: selectionColor),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: greyColor,
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: greyColor,
                size: 21,
              ),
            ),
          ),
        ),
        // show the summary page if the screen size is not a desktop size in an end drawer
        if (!isDesktop)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  "assets/images/avatar.jpg",
                  width: 40,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
