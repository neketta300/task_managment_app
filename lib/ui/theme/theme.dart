import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final themeData = ThemeData(bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white));
const _primaryColor = Color(0xFF006EE9);
const textfieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.zero,
  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _primaryColor, width: 3)),
  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: _primaryColor, width: 3)),
);

final lightTheme = ThemeData(
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.white),
  colorScheme: ColorScheme.fromSeed(seedColor: _primaryColor, brightness: Brightness.light),
  dividerTheme: DividerThemeData(color: Colors.grey.withValues(alpha: 0.1)),
  textTheme: _textTheme,
  useMaterial3: true,
  primaryColor: _primaryColor,
  hintColor: const Color(0xFFEEF5FD),
  scaffoldBackgroundColor: Colors.white,
);

final _textTheme = TextTheme(
  titleMedium: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
  bodyMedium: GoogleFonts.poppins(fontSize: 14),
  labelMedium: GoogleFonts.poppins(fontSize: 14),
  labelSmall: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
);
