import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/pie_chart.dart';
import 'package:fitness_tracker/widgets/schedule_widget.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Container(
      decoration: BoxDecoration(color: !isDesktop ? cardBackgroundColor : null),
      child: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            PieChartCard(),
            Text(
              "Summary",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: greyColor,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SummaryDetails(),
            SizedBox(
              height: 16,
            ),
            ScheduleWidget(),
          ],
        ),
      ),
    );
  }
}
