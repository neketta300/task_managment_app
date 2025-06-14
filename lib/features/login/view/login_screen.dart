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
                SizedBox(height: SizeConfig.getVerticalSize(114)),
                const BaseTitleNSubtitle(),
                SizedBox(height: SizeConfig.getVerticalSize(70)),
                Text(
                  S.of(context).loginToYourAccount,
                  style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: SizeConfig.getVerticalSize(35)),
                BaseTextfieldWIcon(
                  pathToImage: 'assets/textfieldsIcons/message.svg',
                  hintText: S.of(context).email,
                ),
                SizedBox(height: SizeConfig.getVerticalSize(20)),
                BaseTextfieldWIcon(
                  pathToImage: 'assets/textfieldsIcons/lock.svg',
                  hintText: S.of(context).password,
                ),
                const ForgotPassword(),
                SizedBox(height: SizeConfig.getVerticalSize(42)),
                BaseButton(text: S.of(context).login, onTap: () => _onLoginTap(context)),
                SizedBox(height: SizeConfig.getVerticalSize(35)),
                BaseLoginLabel(text: S.of(context).orLoginWith),
                SizedBox(height: SizeConfig.getVerticalSize(21)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const BaseLoginWithButton(pathToImage: 'assets/signInWithIcons/google.svg'),
                    SizedBox(width: SizeConfig.getHorizontalSize(40)),
                    const BaseLoginWithButton(pathToImage: 'assets/signInWithIcons/facebook.svg'),
                    SizedBox(width: SizeConfig.getHorizontalSize(40)),
                    const BaseLoginWithButton(pathToImage: 'assets/signInWithIcons/twitter.svg'),
                  ],
                ),
                SizedBox(height: SizeConfig.getVerticalSize(21)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).dontHaveAnAccount,
                      style: GoogleFonts.poppins(fontSize: 12, color: const Color(0xFF474747)),
                    ),
                    GestureDetector(
                      onTap: () => _onSignUpTap(context),
                      child: Text(
                        S.of(context).signUp,
                        style: GoogleFonts.poppins(fontSize: 12, color: theme.primaryColor),
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

  void _onLoginTap(BuildContext context) {
    AutoRouter.of(context).replace(const MainRoute());
  }

  void _onSignUpTap(BuildContext context) {
    AutoRouter.of(context).push(const RegisterRoute());
  }
}
