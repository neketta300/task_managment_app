import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../generated/l10n.dart';
import '../../../ui/ui.dart';

@RoutePage()
class SuccessVerificationScreen extends StatelessWidget {
  const SuccessVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: SizeConfig.getVerticalPadding(114)),
                    BaseTitleNSubtitle(),
                    SizedBox(height: SizeConfig.getVerticalPadding(45)),
                    Text(
                      S.of(context).verifyAccount,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(40)),
                    SvgPicture.asset(
                      'assets/authFlow/success_verification.svg',
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(35)),
                    Text(
                      textAlign: TextAlign.center,
                      S.of(context).yourAccountHasBeennverifiedSuccessfully,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(70)),
                    BaseButton(
                      text: S.of(context).goToDashboard,
                      onTap: () => _onGoToDashboardTap(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onGoToDashboardTap(BuildContext context) {
    AutoRouter.of(context).replace(const MainRoute());
  }
}
