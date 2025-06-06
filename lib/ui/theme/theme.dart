import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _primaryColor = Color(0xFF105CDB);

final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    brightness: Brightness.light,
  ),
  dividerTheme: DividerThemeData(color: Colors.grey.withValues(alpha: 0.1)),
  textTheme: _textTheme,
  useMaterial3: true,
  primaryColor: _primaryColor,
  hintColor: Color(0xFFEEF5FD),
  scaffoldBackgroundColor: Colors.white,
);

final _textTheme = TextTheme(
  titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
  bodyMedium: GoogleFonts.poppins(fontSize: 14),
  labelMedium: GoogleFonts.poppins(fontSize: 14),
  labelSmall: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
);
