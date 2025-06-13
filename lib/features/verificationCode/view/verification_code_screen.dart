import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

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
                    SizedBox(height: SizeConfig.getVerticalPadding(45)),
                    Text(
                      S.of(context).verifyAccount,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(40)),
                    SvgPicture.asset('assets/authFlow/confirm_email.svg'),
                    SizedBox(height: SizeConfig.getVerticalPadding(35)),
                    Text(
                      textAlign: TextAlign.center,
                      S.of(context).pleaseEnterTheVerificationNumber,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(52)),
                    IntrinsicWidth(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          BaseConfirmTextfield(),
                          SizedBox(height: SizeConfig.getVerticalPadding(9)),
                          Padding(
                            padding: const EdgeInsets.only(left: 74),
                            child: Row(
                              children: [
                                Text(
                                  S.of(context).dontReceiveACode,
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFF9A9A9A),
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                GestureDetector(
                                  child: Text(
                                    S.of(context).resend,
                                    style: TextStyle(
                                      color: theme.primaryColor,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalPadding(61)),
                    BaseButton(text: S.of(context).confirm, onTap: () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _onBackButtonPressed(BuildContext context) {
    Navigator.of(context).pop();
  }
}

class BaseConfirmTextfield extends StatelessWidget {
  const BaseConfirmTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 74),
      child: Row(
        spacing: 9,
        children: [
          TextfieldCell(),
          TextfieldCell(),
          TextfieldCell(),
          TextfieldCell(),
        ],
      ),
    );
  }
}

class TextfieldCell extends StatelessWidget {
  const TextfieldCell({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        style: GoogleFonts.poppins(),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        decoration: textfieldDecoration,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
