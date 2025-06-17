import 'package:flutter/material.dart';

import '../../core/core.dart';

class BaseRadioButton extends StatefulWidget {
  const BaseRadioButton({super.key});

  @override
  State<BaseRadioButton> createState() => _BaseRadioButtonState();
}

class _BaseRadioButtonState extends State<BaseRadioButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: AnimatedContainer(
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
              width: _isSelected ? SizeConfig.getVerticalSize(16) : 0,
              height: _isSelected ? SizeConfig.getVerticalSize(16) : 0,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
