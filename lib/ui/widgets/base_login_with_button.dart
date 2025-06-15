import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaseLoginWithButton extends StatelessWidget {
  const BaseLoginWithButton({super.key, required this.pathToImage});

  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 71,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF006EE9).withValues(alpha: 0.1), width: 1.5),
      ),

      child: SvgPicture.asset(pathToImage, fit: BoxFit.scaleDown),
    );
  }
}
