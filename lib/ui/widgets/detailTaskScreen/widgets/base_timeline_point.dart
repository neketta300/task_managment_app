import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTimelinePoint extends StatelessWidget {
  const BaseTimelinePoint({
    super.key,
    required this.date,
    required this.point,
    required this.crossAxisAlignment,
  });

  final String date;
  final String point;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(point, style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        Text(date, style: GoogleFonts.poppins(fontSize: 14)),
      ],
    );
  }
}
