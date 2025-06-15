import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  left: SizeConfig.getVerticalSize(20),
                  top: SizeConfig.getHorizontalSize(76),
                  child: IconButton(
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      backgroundColor: WidgetStateProperty.all(theme.primaryColor),
                    ),
                    onPressed: () {
                      _onBackButtonPressed(context);
                    },
                    icon: SvgPicture.asset('assets/backButtonIcon/back_arrow.svg'),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: SizeConfig.getVerticalSize(114)),
                    const BaseTitleNSubtitle(),
                    SizedBox(height: SizeConfig.getVerticalSize(55)),
                    Text(
                      S.of(context).createYourAccount,
                      style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(35)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/person.svg',
                      hintText: S.of(context).username,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/message.svg',
                      hintText: S.of(context).email,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/lock.svg',
                      hintText: S.of(context).password,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(20)),
                    BaseTextfieldWIcon(
                      pathToImage: 'assets/textfieldsIcons/lock.svg',
                      hintText: S.of(context).confirmPassword,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(42)),
                    BaseButton(text: S.of(context).register, onTap: () => _onRegisterTap(context)),
                    SizedBox(height: SizeConfig.getVerticalSize(35)),
                    BaseLoginLabel(text: S.of(context).orRegisterWith),
                    SizedBox(height: SizeConfig.getVerticalSize(21)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const BaseLoginWithButton(pathToImage: 'assets/signInWithIcons/google.svg'),
                        SizedBox(width: SizeConfig.getHorizontalSize(40)),
                        const BaseLoginWithButton(
                          pathToImage: 'assets/signInWithIcons/facebook.svg',
                        ),
                        SizedBox(width: SizeConfig.getHorizontalSize(40)),
                        const BaseLoginWithButton(
                          pathToImage: 'assets/signInWithIcons/twitter.svg',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
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
