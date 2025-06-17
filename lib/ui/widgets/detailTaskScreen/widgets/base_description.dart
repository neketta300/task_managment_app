import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

class Descritpion extends StatelessWidget {
  final double? fontSize;
  final FontWeight? fontWeight;
  const Descritpion({super.key, this.fontSize, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).description,
      style: GoogleFonts.poppins(
        fontSize: fontSize ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: const Color(0xFF4A4646),
      ),
    );
  }
}
