import 'package:flutter/material.dart';

import '../detail_task_screen.dart';

class BaseTimelineRow extends StatelessWidget {
  const BaseTimelineRow({
    super.key,
    required this.startDate,
    required this.endDate,
    this.fontSzie,
    this.fontWeight,
  });

  final String startDate;
  final String endDate;
  final double? fontSzie;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BaseTimelinePoint(
          date: startDate,
          point: 'start',
          crossAxisAlignment: CrossAxisAlignment.start,
          fontWeight: fontWeight,
          fontSize: fontSzie,
        ),
        const Spacer(),
        BaseTimelinePoint(
          date: endDate,
          point: 'end',
          crossAxisAlignment: CrossAxisAlignment.end,
          fontWeight: fontWeight,
          fontSize: fontSzie,
        ),
      ],
    );
  }
}
