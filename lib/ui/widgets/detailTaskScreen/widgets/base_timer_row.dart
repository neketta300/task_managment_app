import 'package:flutter/material.dart';
import 'package:task_managment/core/size/size_config.dart';

import '../detail_task_screen.dart';

class BaseTimerRow extends StatelessWidget {
  final List<TimeSegment> segments;
  final double? containerSize;
  final bool useDivider;

  const BaseTimerRow({
    super.key,
    required this.segments,
    required this.useDivider,
    this.containerSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < segments.length; i++) ...[
          BaseTimeContainer(
            value: segments[i].value,
            timeUnit: segments[i].unit,
            width: containerSize ?? 108,
          ),
          if (i != segments.length - 1)
            useDivider
                ? const Expanded(child: BaseDivider())
                : SizedBox(width: SizeConfig.getHorizontalSize(19)),
        ],
      ],
    );
  }
}
