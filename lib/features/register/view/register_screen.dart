import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  left: SizeConfig.getVerticalPadding(20),
                  top: SizeConfig.getHorizontalPadding(76),
                  child: IconButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: WidgetStateProperty.all(
                        theme.primaryColor,
                      ),
                    ),
                    onPressed: () {
                      _onBackButtonPressed(context);
                    },
                    icon: SvgPicture.asset(
                      'assets/backButtonIcon/back_arrow.svg',
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: SizeConfig.getVerticalPadding(114)),
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
                    SizedBox(height: SizeConfig.getVerticalPadding(55)),
                    Text(
                      S.of(context).createYourAccount,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(35)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/person.svg',
                      hintText: S.of(context).username,
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/message.svg',
                      hintText: S.of(context).email,
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/lock.svg',
                      hintText: S.of(context).password,
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/lock.svg',
                      hintText: S.of(context).confirmPassword,
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(42)),
                    BaseButton(
                      text: S.of(context).register,
                      onTap: () => _onRegisterTap(context),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(35)),
                    BaseLoginLabel(text: S.of(context).orRegisterWith),
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onRegisterTap(BuildContext context) {
    AutoRouter.of(context).push(const VerificationCodeRoute());
  }

  void _onBackButtonPressed(BuildContext context) {
    Navigator.of(context).pop();
  }
}
