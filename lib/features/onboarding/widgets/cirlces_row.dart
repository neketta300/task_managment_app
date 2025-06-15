import 'package:flutter/material.dart';

class CirclesRow extends StatelessWidget {
  const CirclesRow({
    super.key,
    required this.currentIndex,
    this.itemCount = 3,
    this.activeColor,
    this.inactiveColor,
    this.size = 10.0,
    this.spacing = 6.0,
  });

  final int currentIndex;
  final int itemCount;
  final Color? activeColor;
  final Color? inactiveColor;
  final double size;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final active = activeColor ?? theme.primaryColor;
    final inactive = inactiveColor ?? theme.hintColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return Padding(
          padding: EdgeInsets.only(right: index == itemCount - 1 ? 0 : spacing),
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(shape: BoxShape.circle, color: index == currentIndex ? active : inactive),
          ),
        );
      }),
    );
  }
}
