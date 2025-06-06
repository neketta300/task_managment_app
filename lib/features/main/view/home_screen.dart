import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/router/router.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeRoute(), CalendarRoute(), AccountRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ],
        );
      },
    );
  }
}
