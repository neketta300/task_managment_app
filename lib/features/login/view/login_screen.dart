import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.getVerticalPadding(114)),
                BaseTitleNSubtitle(),
                SizedBox(height: SizeConfig.getVerticalPadding(70)),
                Text(
                  S.of(context).loginToYourAccount,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: SizeConfig.getVerticalPadding(35)),
                BaseTextfieldWIcon(
                  pathToImage: 'assets/textfieldsIcons/message.svg',
                  hintText: S.of(context).email,
                ),
                SizedBox(height: SizeConfig.getVerticalPadding(20)),
                BaseTextfieldWIcon(
                  pathToImage: 'assets/textfieldsIcons/lock.svg',
                  hintText: S.of(context).password,
                ),
                ForgotPassword(),
                SizedBox(height: SizeConfig.getVerticalPadding(42)),
                BaseButton(text: S.of(context).login, onTap: () {}),
                SizedBox(height: SizeConfig.getVerticalPadding(35)),
                BaseLoginLabel(text: S.of(context).orLoginWith),
                SizedBox(height: SizeConfig.getVerticalPadding(21)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BaseLoginWithButton(
                      pathToImage: 'assets/signInWithIcons/google.svg',
                    ),
                    SizedBox(width: SizeConfig.getHorizontalPadding(40)),
                    BaseLoginWithButton(
                      pathToImage: 'assets/signInWithIcons/facebook.svg',
                    ),
                    SizedBox(width: SizeConfig.getHorizontalPadding(40)),
                    BaseLoginWithButton(
                      pathToImage: 'assets/signInWithIcons/twitter.svg',
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.getVerticalPadding(21)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).dontHaveAnAccount,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFF474747),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(const RegisterRoute());
                      },
                      child: Text(
                        S.of(context).signUp,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: theme.primaryColor,
                        ),
                      ),
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
}

class BaseTitleNSubtitle extends StatelessWidget {
  const BaseTitleNSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          "TASK-WAN",
          style: GoogleFonts.righteous(
            fontSize: 30,
          ).copyWith(color: theme.primaryColor),
        ),
        SizedBox(height: SizeConfig.getVerticalPadding(7)),
        Text(
          S.of(context).managementApp,
          style: GoogleFonts.poppins(
            color: Color(0xFF9A9A9A),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
