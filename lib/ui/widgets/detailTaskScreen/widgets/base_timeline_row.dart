import 'package:flutter/material.dart';

import '../detail_task_screen.dart';

class BaseTimelineRow extends StatelessWidget {
  const BaseTimelineRow({super.key, required this.startDate, required this.endDate});

  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BaseTimelinePoint(
          date: startDate,
          point: 'start',
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        const Spacer(),
        BaseTimelinePoint(date: endDate, point: 'end', crossAxisAlignment: CrossAxisAlignment.end),
      ],
    );
  }
}
