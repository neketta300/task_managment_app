import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/core.dart';

class BaseTimeContainer extends StatelessWidget {
  const BaseTimeContainer({
    super.key,
    required this.value,
    required this.timeUnit,
    this.width = 108,
    this.height = 96,
  });

  final String value;
  final String timeUnit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: SizeConfig.getHorizontalSize(width!),
      height: SizeConfig.getVerticalSize(height!),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: theme.primaryColor),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: GoogleFonts.poppins(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            timeUnit,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
