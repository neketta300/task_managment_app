import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_managment/features/onboarding/models/onboarding_model.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';
import '../../../generated/l10n.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final onboardingContentList = getOnboardingContent(context);

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        itemCount: onboardingContentList.length,
        itemBuilder:
            (context, index) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: SafeArea(
                    child: Row(
                      children: [
                        CirclesRow(currentIndex: index),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            S.of(context).skip,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: theme.primaryColor,
                            ),
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
                          onboardingContentList[index].pathToSvg,
                        ),
                        SizedBox(height: SizeConfig.getVerticalPadding(24)),
                        Text(
                          onboardingContentList[index].title,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: SizeConfig.getVerticalPadding(24)),
                        Text(
                          textAlign: TextAlign.center,
                          onboardingContentList[index].subtitle,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                currentPage == onboardingContentList.length - 1
                    ? BaseButton(
                      text: S.of(context).getStarted,
                      onTap:
                          () => AutoRouter.of(context).push(const LoginRoute()),
                    )
                    : BaseButton(
                      text: S.of(context).next,
                      onTap: () {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.easeInOut,
                        );
                      },
                    ),
                SizedBox(height: SizeConfig.getVerticalPadding(25)),
              ],
            ),
      ),
    );
  }
}
