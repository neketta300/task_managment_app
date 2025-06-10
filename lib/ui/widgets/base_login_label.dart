import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseLoginLabel extends StatelessWidget {
  const BaseLoginLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 1, width: 10, color: theme.primaryColor),
        SizedBox(width: 6),
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 14, color: Color(0xFF474747)),
        ),
        SizedBox(width: 6),
        Container(height: 1, width: 10, color: theme.primaryColor),
      ],
    );
  }
}
