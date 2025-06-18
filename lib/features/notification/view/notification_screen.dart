import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.getHorizontalSize(20),
                vertical: SizeConfig.getVerticalSize(10),
              ),
              child: Row(
                children: [
                  BaseActionButton(
                    onTap: () => context.router.pop(),
                    pathToImage: 'assets/backButtonIcon/back_arrow.svg',
                  ),
                  const Spacer(),
                  Text(
                    'Notification',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: SizeConfig.getHorizontalSize(36)),
                  const Spacer(),
                ],
              ),
            ),
            SizedBox(height: SizeConfig.getVerticalSize(10)),
            // Разделитель с отрицательным margin снизу
            Divider(
              color: theme.primaryColor,
              thickness: 1.5,
              height: 1, // Минимальная высота
            ),

            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero, // Убираем все отступы
                itemCount: 25,
                itemBuilder: (context, index) {
                  bool status = false;
                  if (index % 2 == 0) {
                    status = true;
                  } else {
                    status = false;
                  }
                  return NotificationTile(
                    checked: status,
                    onTap:
                        () => context.router.push(
                          DetailNotificationRoute(
                            notificationId: 1,
                            pathToImage: 'assets/notificationIcons/statistic.svg',
                            notificationTitle: 'See your statistic!',
                            notificationMessage:
                                "Hello Phillip, let's see your progress in 2020, and fix it soon. Go ahead and get the best results this year. Add your tasks and time them, to make it easier.",
                          ),
                        ),
                    notificationTitle: 'See your statistic!',
                    notificationMessage:
                        "Hello Phillip, let's see your progress in 2020 and fix it",

                    // Для первого элемента убираем верхний отступ
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
