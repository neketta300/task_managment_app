import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        // UsersRoute(),
        // PostsRoute(),
        // SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            // BottomNavigationBarItem(label: 'Users', ...),
            // BottomNavigationBarItem(label: 'Posts', ...),
            // BottomNavigationBarItem(label: 'Settings', ...),
          ],
        );
      },
    );
  }
}
