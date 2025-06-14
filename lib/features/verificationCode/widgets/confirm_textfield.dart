import 'package:flutter/material.dart';

import 'widgets.dart';

class ConfirmTextfield extends StatelessWidget {
  const ConfirmTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 74),
      child: Row(
        spacing: 9,
        children: [TextfieldCell(), TextfieldCell(), TextfieldCell(), TextfieldCell()],
      ),
    );
  }
}
