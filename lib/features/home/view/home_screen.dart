import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/router/router.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';
import '../widgets/widgets.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: SizeConfig.getVerticalSize(12)),
                      Header(
                        onTap: () => _onNotificationTap(context),
                        pathToImage: 'assets/dashboradScreen/notification.svg',
                      ),
                      SizedBox(height: SizeConfig.getVerticalSize(33)),
                      const SubHeader(name: 'Neketta'),
                      SizedBox(height: SizeConfig.getVerticalSize(33)),
                      TaskCategory(title: S.of(context).myPriorityTask),
                      SizedBox(height: SizeConfig.getVerticalSize(10)),
                    ],
                  ),
                ),
                SizedBox(
                  height: SizeConfig.getVerticalSize(188),
                  child: ListView.separated(
                    padding: EdgeInsets.only(left: SizeConfig.getHorizontalSize(15)),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        onTap: () => _onPriorityTaskCardTap(context),
                        deadlineTime: '5 days',
                        title: 'UI Design',
                        pathToImage: 'assets/tasksIcon/icon1.svg',
                        progressStatus: 0.3,
                      );
                    },
                    separatorBuilder: (_, _) => SizedBox(width: SizeConfig.getHorizontalSize(12)),
                    itemCount: 3,
                  ),
                ),
                SizedBox(height: SizeConfig.getVerticalSize(32)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(15)),
                  child: Column(
                    children: [
                      TaskCategory(title: S.of(context).dailyTask),
                      SizedBox(height: SizeConfig.getVerticalSize(10)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(15)),
          sliver: SliverList.builder(
            itemCount: 7, // Замените на реальное количество задач
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: SizeConfig.getVerticalSize(8)),
                child: BaseTaskRow(
                  tasksText: 'Work Out',
                  onTap: () => _onDailyTaskTap(context),
                ), // Ваш виджет задачи
              );
            },
          ),
        ),
      ],
    );
  }

  void _onNotificationTap(BuildContext context) {
    context.router.push(const NotificationRoute());
  }

  Future<Object?> _onDailyTaskTap(BuildContext context) =>
      context.router.push(DetailDailyTaskRoute(taskId: 1));

  Future<Object?> _onPriorityTaskCardTap(BuildContext context) =>
      context.router.push(DetailPriorityTaskRoute(taskId: 1));
}
