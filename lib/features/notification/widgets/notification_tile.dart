import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/core.dart';

class NotificationTile extends StatelessWidget {
  final bool checked;
  final String notificationTitle;
  final String notificationMessage;
  final void Function() onTap;
  const NotificationTile({
    super.key,
    required this.checked,
    required this.onTap,
    required this.notificationTitle,
    required this.notificationMessage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: checked ? const Color(0xFFF1F7FE) : null,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.getHorizontalSize(17),
          vertical: SizeConfig.getVerticalSize(13),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/notificationIcons/statistic.svg',
              colorFilter:
                  checked ? const ColorFilter.mode(Color(0xFF7A9CC3), BlendMode.srcIn) : null,
            ),
            SizedBox(width: SizeConfig.getHorizontalSize(20)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationTitle,
                    style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    notificationMessage,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: GoogleFonts.poppins(fontSize: 11, color: const Color(0xFF474747)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
