import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskCategory extends StatelessWidget {
  const TaskCategory({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w600));
  }
}
