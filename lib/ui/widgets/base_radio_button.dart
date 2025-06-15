import 'package:flutter/material.dart';

import '../../core/core.dart';

class BaseRadioButton extends StatelessWidget {
  const BaseRadioButton({super.key, required bool isPressed}) : _isPressed = isPressed;

  final bool _isPressed;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: SizeConfig.getVerticalSize(24),
      height: SizeConfig.getVerticalSize(24),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 3),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            width: _isPressed ? SizeConfig.getVerticalSize(16) : 0,
            height: _isPressed ? SizeConfig.getVerticalSize(16) : 0,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
