import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/router/router.dart';

import '../widgets/widgets.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AutoTabsRouter(
        routes: const [HomeRoute(), CalendarRoute(), AccountRoute()],
        builder: (context, child) {
          final tabsRouter = AutoTabsRouter.of(context);
          return Scaffold(
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: tabsRouter.activeIndex,

              onTap: tabsRouter.setActiveIndex,
              items: [
                BottomNavigationBarItem(
                  icon: CustomNavIcon(
                    iconAsset: 'assets/bottomNavBarIcons/home_unselected.svg',
                    isActive: tabsRouter.activeIndex == 0,
                  ),

                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: CustomNavIcon(
                    iconAsset: 'assets/bottomNavBarIcons/calendar_unselected.svg',
                    isActive: tabsRouter.activeIndex == 1,
                  ),
                  label: 'Schedule',
                ),
                BottomNavigationBarItem(
                  icon: CustomNavIcon(
                    iconAsset: 'assets/bottomNavBarIcons/profile_unselected.svg',
                    isActive: tabsRouter.activeIndex == 2,
                  ),
                  label: 'Account',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
