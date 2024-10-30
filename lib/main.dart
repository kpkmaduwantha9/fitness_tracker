import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const KpApp());
}

class KpApp extends StatelessWidget {
  const KpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Responsive Fitness Tracker",
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const HomePage(),
    );
  }
}
