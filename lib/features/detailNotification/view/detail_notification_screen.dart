import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';

@RoutePage()
class DetailNotificationScreen extends StatelessWidget {
  final String pathToImage;
  final int notificationId;
  final String notificationTitle;
  final String notificationMessage;
  const DetailNotificationScreen({
    super.key,
    required this.notificationId,
    required this.pathToImage,
    required this.notificationTitle,
    required this.notificationMessage,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.getHorizontalSize(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: SizeConfig.getVerticalSize(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(pathToImage, width: 34, height: 34),
                    SizedBox(width: SizeConfig.getHorizontalSize(27)),
                    Text(
                      notificationTitle,
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    BaseActionButton(
                      onTap: () => context.router.pop(),
                      pathToImage: 'assets/backButtonIcon/close.svg',
                    ),
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.getVerticalSize(10)),
              Text(
                '4 March 2025',
                style: GoogleFonts.poppins(fontSize: 12, color: const Color(0XFF474747)),
              ),
              SizedBox(height: SizeConfig.getVerticalSize(20)),
              Text(
                notificationMessage,
                style: GoogleFonts.poppins(fontSize: 14, color: const Color(0XFF474747)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
