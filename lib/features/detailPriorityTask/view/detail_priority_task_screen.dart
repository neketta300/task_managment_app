import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/core/size/size_config.dart';
import 'package:task_managment/generated/l10n.dart';
import 'package:task_managment/ui/widgets/widgets.dart';

import '../detail_priority_task.dart';

@RoutePage()
class DetailPriorityTaskScreen extends StatelessWidget {
  const DetailPriorityTaskScreen({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context) {
    log('$taskId');
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(15)),
            sliver: SliverSafeArea(
              bottom: false,
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: SizeConfig.getVerticalSize(12)),
                    const BaseDetailHeader(
                      taskName: 'UI Design',
                      pathToImage: 'assets/tasksIcon/icon1.svg',
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(12)),
                    const BaseTimelineRow(startDate: '21 Feb 2025', endDate: '30 Oct 2025'),
                    SizedBox(height: SizeConfig.getVerticalSize(12)),
                    BaseTimerRow(
                      segments: [
                        TimeSegment('0', 'months'),
                        TimeSegment('12', 'days'),
                        TimeSegment('4', 'hours'),
                      ],
                      useDivier: true,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(24)),
                    Text(
                      S.of(context).description,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF4A4646),
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis libero ut turpis maximus dapibus at at nisi. Integer molestie nisi sapien, rhoncus porta metus imperdiet nec. Pellentesque cursus molestie tincidunt. Nunc ultrices pretium ultricies. Vivamus laoreet, enim sit amet lacinia porttitor, risus nisi mattis risus.',
                      style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF4A4646)),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(24)),
                    Text(
                      S.of(context).progress,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF4A4646),
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(5)),
                    const DetailTaskLinearProgressIndicator(value: 0.5),
                    SizedBox(height: SizeConfig.getVerticalSize(24)),
                    Text(
                      'To Do List',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF4A4646),
                      ),
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(7)),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(15)),
            sliver: SliverList.builder(
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: SizeConfig.getVerticalSize(8)),
                  child: BaseTaskRow(tasksText: 'Work Out', onTap: context.router.push()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
