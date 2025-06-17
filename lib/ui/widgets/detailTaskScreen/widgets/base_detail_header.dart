import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../ui.dart';

class BaseDetailHeader extends StatelessWidget {
  const BaseDetailHeader({super.key, required this.taskName, required this.pathToImage});

  final String taskName;
  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          pathToImage,
          width: 30,
          colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
        ),
        Text(
          ' $taskName',
          style: GoogleFonts.poppins(
            color: theme.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
        const Spacer(),
        BaseActionButton(
          onPressed: () => _onBackActionButton(context),
          pathToImage: 'assets/backButtonIcon/close.svg',
        ),
      ],
    );
  }

  void _onBackActionButton(BuildContext context) => context.router.pop();
}
