import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/core.dart';
import '../ui.dart';

class BaseTaskRow extends StatelessWidget {
  const BaseTaskRow({super.key, required this.tasksText, this.onTap});

  final String tasksText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getHorizontalSize(14),
          vertical: SizeConfig.getVerticalSize(11),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff006EE9).withValues(alpha: 0.06)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              tasksText,
              style: GoogleFonts.poppins(
                color: theme.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const BaseRadioButton(),
            // const AnimatedRoundButton(),
          ],
        ),
      ),
    );
  }
}
