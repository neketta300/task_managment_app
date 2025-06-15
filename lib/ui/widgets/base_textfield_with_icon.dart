import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseTextfieldWIcon extends StatelessWidget {
  const BaseTextfieldWIcon({super.key, required this.pathToImage, required this.hintText});

  final String pathToImage;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF006EE9).withValues(alpha: 0.1), width: 1.5),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 50,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: SvgPicture.asset(pathToImage),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF9A9A9A)),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 22),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
