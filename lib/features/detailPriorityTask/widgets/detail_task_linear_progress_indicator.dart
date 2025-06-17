import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTaskLinearProgressIndicator extends StatelessWidget {
  final double value;

  const DetailTaskLinearProgressIndicator({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        LinearProgressIndicator(
          minHeight: 20,
          borderRadius: BorderRadius.circular(20),
          value: value,
          backgroundColor: const Color(0xFFA9A2A2),
          color: theme.primaryColor,
        ),
        Positioned.fill(
          child: Center(
            child: Text(
              '${(value * 100).toInt()}%',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
