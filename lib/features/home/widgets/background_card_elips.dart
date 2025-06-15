import 'package:flutter/material.dart';

class BackgroundCardElips extends StatelessWidget {
  const BackgroundCardElips({
    super.key,
    this.right = 0,
    this.left = 0,
    this.top = 0,
    this.bottom = 0,
    required this.widthOfBorder,
    required this.size,
  });

  final double? right;
  final double? left;
  final double? top;
  final double? bottom;
  final double size;
  final double widthOfBorder;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: Container(
        width: size,
        height: size,

        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: const Color(0xFF68A0F4).withValues(alpha: 0.22),
            width: widthOfBorder,
          ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
