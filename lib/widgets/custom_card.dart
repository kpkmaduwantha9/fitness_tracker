import 'package:fitness_tracker/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child; //required parameter
  final Color? color; /* not required parameter*/
  final EdgeInsetsGeometry? padding; /* not required parameter*/
  const CustomCard({
    super.key,
    required this.child, //required parameter
    this.color,
    /* not required parameter*/
    this.padding,
    /* not required parameter*/
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? cardBackgroundColor,
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(12.0),
        child: child,
      ),
    );
  }
}
