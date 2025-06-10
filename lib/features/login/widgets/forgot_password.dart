import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Text(
            S.of(context).forgotPassword,
            style: GoogleFonts.poppins(color: Color(0XFF87ADF4), fontSize: 12),
          ),
        ),
      ],
    );
  }
}
