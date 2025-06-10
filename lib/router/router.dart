import 'package:auto_route/auto_route.dart';
import 'package:task_managment/features/account/view/account.dart';
import 'package:task_managment/features/calendar/view/calendar.dart';
import 'package:task_managment/features/login/view/login_screen.dart';
import 'package:task_managment/features/register/view/register_screen.dart';
import 'package:task_managment/features/verificationCode/view/verification_code_screen.dart';
import '../features/home/home.dart';
import '../features/main/view/home_screen.dart';
import '../features/onboarding/start.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // Onboarding flow
    AutoRoute(
      path: '/onboarding/first',
      page: FstOnboardingRoute.page,
      initial: true,
    ),
    AutoRoute(path: '/onboarding/second', page: ScndOnboardingRoute.page),
    AutoRoute(path: '/onboarding/third', page: ThdOnboardingRoute.page),

    // Auth flow
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: RegisterRoute.page, path: '/register'),
    AutoRoute(page: VerificationCodeRoute.page, path: '/code-verification'),
    //         AutoRoute(path: '/success-confirmation', page: SuccessConfirmationRoute.page),

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
  ];
}



// @AutoRouterConfig()
// class AppRouter extends RootStackRouter {
//   @override
//   List<AutoRoute> get routes => [
//         AutoRoute(path: '/onboarding/first', page: FstOnboardingRoute.page, initial: true),
//         AutoRoute(path: '/onboarding/second', page: ScndOnboardingRoute.page),
//         AutoRoute(path: '/onboarding/third', page: ThrdOnboardingRoute.page),
//         AutoRoute(path: '/login', page: LoginRoute.page),
//         AutoRoute(path: '/register', page: RegisterRoute.page),
//         AutoRoute(path: '/email-confirmation', page: EmailConfirmationRoute.page),
//         AutoRoute(path: '/success-confirmation', page: SuccessConfirmationRoute.page),
//         AutoRoute(
//           path: '/home',
//           page: HomeRoute.page,
//           children: [
//             AutoRoute(path: 'tab1', page: Tab1Route.page, initial: true),
//             AutoRoute(path: 'tab2', page: Tab2Route.page),
//             AutoRoute(path: 'tab3', page: Tab3Route.page),
//           ],
//         ),
//       ];
// }