import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.onTap, required this.pathToImage});

  final void Function() onTap;
  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Saturday, Feb 20 2022',
          style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF474747)),
        ),
        const Spacer(),
        GestureDetector(onTap: onTap, child: SvgPicture.asset(pathToImage)),
      ],
    );
  }
}
