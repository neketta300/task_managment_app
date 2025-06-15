import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Saturday, Feb 20 2022',
          style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF474747)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset('assets/dashboradScreen/notification.svg'),
        ),
      ],
    );
  }
}
