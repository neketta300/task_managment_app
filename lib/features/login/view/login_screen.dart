import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/ui/widgets/base_button.dart';

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
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TASK-WAN",
                    style: GoogleFonts.righteous(
                      fontSize: 30,
                    ).copyWith(color: theme.primaryColor),
                  ),
                  SizedBox(height: 7),
                  Text(
                    S.of(context).managementApp,
                    style: GoogleFonts.poppins(
                      color: Color(0xFF9A9A9A),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 75),
                  Text(
                    S.of(context).loginToYourAccount,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 35),
                  IconTextfield(
                    pathToImage: 'assets/loginTextfield/message.svg',
                    hintText: 'Email',
                  ),
                  SizedBox(height: 20),
                  IconTextfield(
                    pathToImage: 'assets/loginTextfield/lock.svg',
                    hintText: 'Password',
                  ),
                  _ForgotPassword(),
                  SizedBox(height: 42),
                  BaseButton(text: 'Login', onTap: () {}),
                  SizedBox(height: 35),
                  _OrLoginWith(),
                  SizedBox(height: 21),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoginWContainer(pathToImage: 'assets/signInW/google.svg'),
                      SizedBox(width: 40),
                      LoginWContainer(
                        pathToImage: 'assets/signInW/facebook.svg',
                      ),
                      SizedBox(width: 40),
                      LoginWContainer(
                        pathToImage: 'assets/signInW/twitter.svg',
                      ),
                    ],
                  ),
                  SizedBox(height: 21),
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
                      Text(
                        S.of(context).signUp,
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          color: theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginWContainer extends StatelessWidget {
  const LoginWContainer({super.key, required this.pathToImage});

  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 71,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF006EE9).withValues(alpha: 0.1),
          width: 1.5,
        ),
      ),

      child: SvgPicture.asset(pathToImage, fit: BoxFit.scaleDown),
    );
  }
}

class _OrLoginWith extends StatelessWidget {
  const _OrLoginWith();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(height: 1, width: 10, color: theme.primaryColor),
        SizedBox(width: 6),
        Text(
          S.of(context).orLoginWith,
          style: GoogleFonts.poppins(fontSize: 14, color: Color(0xFF474747)),
        ),
        SizedBox(width: 6),
        Container(height: 1, width: 10, color: theme.primaryColor),
      ],
    );
  }
}

class _ForgotPassword extends StatelessWidget {
  const _ForgotPassword();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Text(
            S.of(context).forgotPassword,
            style: GoogleFonts.poppins(color: Color(0XFF87ADF4), fontSize: 12),
          ),
        ),
      ],
    );
  }
}

class IconTextfield extends StatelessWidget {
  const IconTextfield({
    super.key,
    required this.pathToImage,
    required this.hintText,
  });

  final String pathToImage;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF006EE9).withValues(alpha: 0.1),
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 50,
            decoration: BoxDecoration(
              color: theme.primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SvgPicture.asset(pathToImage, width: 15, height: 17),
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: hintText,
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Color(0xFF9A9A9A),
                ),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
