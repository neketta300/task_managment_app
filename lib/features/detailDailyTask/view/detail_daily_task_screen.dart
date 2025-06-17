import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_managment/generated/l10n.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

@RoutePage()
class DetailDailyTaskScreen extends StatelessWidget {
  const DetailDailyTaskScreen({super.key, required this.taskId});

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
                    const BaseDetailHeader(taskName: 'UI Design'),
                    SizedBox(height: SizeConfig.getVerticalSize(12)),
                    const BaseTimelineRow(
                      startDate: '21 Feb 2025',
                      endDate: '30 Oct 2025',
                      fontWeight: FontWeight.normal,
                      fontSzie: 14,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(12)),
                    BaseTimerRow(
                      containerSize: 94,
                      segments: [TimeSegment('12', 'days'), TimeSegment('4', 'hours')],
                      useDivider: false,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(24)),
                    const Descritpion(fontSize: 14, fontWeight: FontWeight.normal),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sagittis libero ut turpis maximus dapibus at at nisi. ',
                      style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xFF4A4646)),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: SizeConfig.getVerticalSize(29)),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: BaseButton(text: S.of(context).finish, onTap: () {})),
        ],
      ),
    );
  }
}
