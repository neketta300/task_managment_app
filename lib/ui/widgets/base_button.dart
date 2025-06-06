import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ).copyWith(color: theme.canvasColor),
          ),
        ),
      ),
    );
  }
}
