import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

class SubHeader extends StatelessWidget {
  const SubHeader({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome $name',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          S.of(context).haveANiceDay,
          style: GoogleFonts.poppins(fontSize: 16, color: const Color(0xFF474747)),
        ),
      ],
    );
  }
}
