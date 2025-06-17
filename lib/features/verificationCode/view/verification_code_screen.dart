import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

import '../../../core/core.dart';
import '../../../router/router.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

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
                  left: SizeConfig.getVerticalSize(20),
                  top: SizeConfig.getHorizontalSize(76),
                  child: BaseActionButton(
                    onPressed: () => _onBackButtonPressed(context),
                    pathToImage: 'assets/backButtonIcon/back_arrow.svg',
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: SizeConfig.getVerticalSize(114)),
                    const BaseTitleNSubtitle(),
                    SizedBox(height: SizeConfig.getVerticalSize(45)),
                    Text(
                      S.of(context).verifyAccount,
                      style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(40)),
                    SvgPicture.asset('assets/authFlow/confirm_email.svg'),
                    SizedBox(height: SizeConfig.getVerticalSize(35)),
                    Text(
                      textAlign: TextAlign.center,
                      S.of(context).pleaseEnterTheVerificationNumber,
                      style: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(52)),
                    IntrinsicWidth(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const ConfirmTextfield(),
                          SizedBox(height: SizeConfig.getVerticalSize(9)),
                          Padding(
                            padding: const EdgeInsets.only(left: 74),
                            child: Row(
                              children: [
                                Text(
                                  S.of(context).dontReceiveACode,
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xFF9A9A9A),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                GestureDetector(
                                  child: Text(
                                    S.of(context).resend,
                                    style: TextStyle(color: theme.primaryColor, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(61)),
                    BaseButton(text: S.of(context).confirm, onTap: () => _onConfirmTap(context)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onConfirmTap(BuildContext context) {
    AutoRouter.of(context).push(const SuccessVerificationRoute());
  }

  void _onBackButtonPressed(BuildContext context) {
    Navigator.of(context).pop();
  }
}
