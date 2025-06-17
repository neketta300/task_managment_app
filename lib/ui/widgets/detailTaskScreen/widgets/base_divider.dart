import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class BaseDivider extends StatelessWidget {
  const BaseDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      color: const Color(0xFF9CCAFE),
      indent: SizeConfig.getHorizontalSize(2),
      endIndent: SizeConfig.getHorizontalSize(2),
    );
  }
}
