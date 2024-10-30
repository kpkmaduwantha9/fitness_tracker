import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartCard extends StatelessWidget {
  const PieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = PieChartSampleData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: pieChartData.pieChartSelectionsData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                        height: 0.6,
                        fontSize: 25,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "of 100%",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: secondaryColor.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
