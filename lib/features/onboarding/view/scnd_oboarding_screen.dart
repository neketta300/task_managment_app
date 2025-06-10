import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/router/router.dart';

import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class ScndOnboardingScreen extends StatelessWidget {
  const ScndOnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final s = S.of(context);

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SafeArea(
              child: Row(
                children: [
                  CirclesRow(currentIndex: 1),
                  const Spacer(),
                  Text(
                    s.skip,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    "assets/getStartedScreens/sndScreen.svg",
                    width: 240,
                    height: 298,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    s.increaseWorkEffectiveness,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    textAlign: TextAlign.center,
                    s.timeManagement,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
          BaseButton(
            text: S.of(context).next,
            onTap:
                () => AutoRouter.of(context).push(const ThdOnboardingRoute()),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
