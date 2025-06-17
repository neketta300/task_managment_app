import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/features/account/view/account.dart';
import 'package:task_managment/features/calendar/view/calendar.dart';
import 'package:task_managment/features/detailDailyTask/view/detail_daily_task_screen.dart';
import 'package:task_managment/features/detailPriorityTask/view/detail_priority_task_screen.dart';
import 'package:task_managment/features/login/view/login_screen.dart';
import 'package:task_managment/features/register/view/register_screen.dart';
import 'package:task_managment/features/verificationCode/view/verification_code_screen.dart';

import '../features/home/home.dart';
import '../features/main/view/main_screen.dart';
import '../features/onboarding/start.dart';
import '../features/successVerification/success_verification.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // Onboarding flow
    AutoRoute(path: '/onboarding', page: OnboardingRoute.page, initial: true),

    // Auth flow
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: RegisterRoute.page, path: '/register'),
    AutoRoute(page: VerificationCodeRoute.page, path: '/register/code-verification'),
    AutoRoute(
      page: SuccessVerificationRoute.page,
      path: '/register/code-verification/success-confirmation',
    ),

    // Main app flow with bottom tabs
    AutoRoute(
      page: MainRoute.page,
      path: '/main/',
      children: [
        AutoRoute(page: HomeRoute.page, path: 'home'),
        AutoRoute(page: AccountRoute.page, path: 'calendar'),
        AutoRoute(page: CalendarRoute.page, path: 'profile'),
      ],
    ),
    AutoRoute(page: DetailPriorityTaskRoute.page, path: '/detail-priority-task/:id'),
    AutoRoute(page: DetailDailyTaskRoute.page, path: '/detail-daily-task/:id'),
  ];
}
