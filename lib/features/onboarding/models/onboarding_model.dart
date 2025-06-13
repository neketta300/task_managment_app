import 'package:flutter/material.dart';
import 'package:task_managment/generated/l10n.dart';

class OnboardingModel {
  final String pathToSvg;
  final String title;
  final String subtitle;

  OnboardingModel({
    required this.subtitle,
    required this.pathToSvg,
    required this.title,
  });
}

List<OnboardingModel> getOnboardingContent(BuildContext context) {
  return [
    OnboardingModel(
      pathToSvg: "assets/getStartedScreens/fstScreen.svg",
      title: S.of(context).easyTimeManagement,
      subtitle: S.of(context).withManagementBasedOnPriority,
    ),
    OnboardingModel(
      pathToSvg: "assets/getStartedScreens/sndScreen.svg",
      title: S.of(context).increaseWorkEffectiveness,
      subtitle: S.of(context).timeManagement,
    ),
    OnboardingModel(
      pathToSvg: "assets/getStartedScreens/thdScreen.svg",
      title: S.of(context).reminderNotification,
      subtitle: S.of(context).theAdvantageOfThisApplicationIs,
    ),
  ];
}
