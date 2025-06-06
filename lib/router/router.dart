import 'package:auto_route/auto_route.dart';
import 'package:task_managment/features/account/view/account.dart';
import 'package:task_managment/features/calendar/view/calendar.dart';
import 'package:task_managment/features/login/view/login_screen.dart';
import '../features/home/home.dart';
import '../features/main/view/home_screen.dart';
import '../features/start/start.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    // Onboarding flow
    AutoRoute(
      page: StartRoutesTaber.page,
      path: '/asd',
      // initial: true,
      children: [
        AutoRoute(page: FirstStartRoute.page, path: 'first'),
        AutoRoute(page: SecondStartRoute.page, path: 'second'),
        AutoRoute(page: ThirdStartRoute.page, path: 'third'),
      ],
    ),

    // Auth flow
    AutoRoute(page: LoginRoute.page, path: '/'),

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
