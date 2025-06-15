import 'package:flutter/material.dart';
import 'package:task_managment/core/size/size_config.dart';

import 'widgets.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
    required this.deadlineTime,
    required this.title,
    required this.pathToImage,
    required this.progressStatus,
    required this.onTap,
  });

  final String deadlineTime;
  final String title;
  final String pathToImage;
  final double progressStatus;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: SizeConfig.getHorizontalSize(129),
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            const BackgroundCardElips(right: -65, top: 43, widthOfBorder: 18, size: 123),
            const BackgroundCardElips(right: 100, top: 9, widthOfBorder: 3, size: 28),
            const BackgroundCardElips(right: 79, top: 86, widthOfBorder: 3, size: 28),
            const BackgroundCardElips(right: 79, top: 145, widthOfBorder: 23, size: 123),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
              child: Column(
                children: [
                  TaskDeadlineLabel(deadlineTime: deadlineTime),
                  SizedBox(height: SizeConfig.getVerticalSize(48)),
                  TaskTitle(pathToImage: pathToImage, title: title),
                  const Spacer(),
                  TaskProgress(progressStatus: progressStatus),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
