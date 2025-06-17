import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BaseActionButton extends StatelessWidget {
  const BaseActionButton({
    super.key,
    required this.onPressed,
    required this.pathToImage,
    this.size = 12,
  });

  final void Function() onPressed;
  final String pathToImage;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        backgroundColor: WidgetStateProperty.all(theme.primaryColor),
      ),
      onPressed: onPressed,
      icon: SvgPicture.asset(pathToImage, width: size),
    );
  }
}
