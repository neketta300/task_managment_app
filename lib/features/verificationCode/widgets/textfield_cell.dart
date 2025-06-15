import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui/ui.dart';

class TextfieldCell extends StatelessWidget {
  const TextfieldCell({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        style: GoogleFonts.poppins(),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: textfieldDecoration,
        inputFormatters: [LengthLimitingTextInputFormatter(1), FilteringTextInputFormatter.digitsOnly],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
