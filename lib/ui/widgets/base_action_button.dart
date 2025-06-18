import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaseActionButton extends StatelessWidget {
  const BaseActionButton({
    super.key,
    required this.onTap,
    required this.pathToImage,
    this.imageSize = 12,
    this.buttonSize = 36,
  });

  final void Function() onTap;
  final String pathToImage;
  final double imageSize;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: SvgPicture.asset(pathToImage, width: imageSize, height: imageSize)),
      ),
    );
  }
}
