import 'package:flutter/material.dart';
import 'package:task_managment/core/size/size_config.dart';

import '../detail_task_screen.dart';

class BaseTimerRow extends StatelessWidget {
  final List<TimeSegment> segments;
  final bool useDivier;

  const BaseTimerRow({super.key, required this.segments, required this.useDivier});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < segments.length; i++) ...[
          BaseTimeContainer(value: segments[i].value, timeUnit: segments[i].unit),
          if (i != segments.length - 1 && useDivier) // Не добавляем разделитель после последнего
            const Expanded(child: BaseDivider())
          else if (!useDivier)
            SizedBox(width: SizeConfig.getHorizontalSize(19)),
        ],
      ],
    );
  }
}
