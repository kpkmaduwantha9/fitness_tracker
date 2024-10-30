import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/schedule_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheduleData = ScheduleData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Scheduled",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        //show the Schedule data
        for (var index = 0;
            index < scheduleData.scheduleDataTasks.length;
            index++)
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: CustomCard(
              color: limeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        scheduleData.scheduleDataTasks[index].title,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                      Text(
                        scheduleData.scheduleDataTasks[index].date,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: greyColor,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.menu_open_sharp,
                    color: greyColor,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
