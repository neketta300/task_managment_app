import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomNavIcon extends StatelessWidget {
  final String iconAsset; // Теперь нужен только один файл
  final bool isActive;
  final double size;

  const CustomNavIcon({super.key, required this.iconAsset, required this.isActive, this.size = 32});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      iconAsset,
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        isActive
            ? Theme.of(context)
                .primaryColor // Активный цвет
            : const Color(0XFFABCEF5), // Неактивный цвет
        BlendMode.srcIn,
      ),
    );
  }
}
