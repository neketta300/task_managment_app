import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/core/size/size_config.dart';
import 'package:task_managment/generated/l10n.dart';

class TaskProgress extends StatelessWidget {
  const TaskProgress({super.key, required this.progressStatus});

  final double progressStatus;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).progress,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: SizeConfig.getVerticalSize(2)),
        LinearProgressIndicator(
          borderRadius: BorderRadius.circular(2),
          value: progressStatus,
          backgroundColor: const Color(0xFF004797),
          color: Colors.white,
        ),
        Row(
          children: [
            const Spacer(),
            Text(
              '${(progressStatus * 100).toInt()}%',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
