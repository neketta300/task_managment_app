import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTimelinePoint extends StatelessWidget {
  const BaseTimelinePoint({
    super.key,
    required this.date,
    required this.point,
    required this.crossAxisAlignment,
    this.fontSize,
    this.fontWeight,
  });

  final String date;
  final String point;
  final CrossAxisAlignment crossAxisAlignment;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          point,
          style: GoogleFonts.poppins(
            fontSize: fontSize ?? 16,
            fontWeight: fontWeight ?? FontWeight.w500,
          ),
        ),
        Text(date, style: GoogleFonts.poppins(fontSize: fontSize ?? 14)),
      ],
    );
  }
}
