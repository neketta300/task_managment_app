import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

import '../../core/core.dart';

class BaseTitleNSubtitle extends StatelessWidget {
  const BaseTitleNSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "TASK-WAN",
          style: GoogleFonts.righteous(
            fontSize: 30,
          ).copyWith(color: theme.primaryColor),
        ),
        SizedBox(height: SizeConfig.getVerticalPadding(7)),
        Text(
          S.of(context).managementApp,
          style: GoogleFonts.poppins(
            color: Color(0xFF9A9A9A),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
