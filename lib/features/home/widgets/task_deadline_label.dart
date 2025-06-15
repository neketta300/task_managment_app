import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskDeadlineLabel extends StatelessWidget {
  const TaskDeadlineLabel({super.key, required this.deadlineTime});

  final String deadlineTime;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFFFFFF),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
              child: Text(
                deadlineTime,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: const Color(0XFF444444),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
