import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'app_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar(
      {super.key, this.title, this.leading, this.trailing, this.upperTitle});

  final String? title;
  final String? upperTitle;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondary,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppColors.primary,
      ),
      leading: leading,
      title: Center(
        child: Column(
          children: [
            if (upperTitle != null)
              AppText(
                title: upperTitle ?? "",
                color: AppColors.gray,
                fontSize: 16,
              ),
            if (upperTitle != null && title != null) SizedBox(height: 4),
            if (title != null)
              Padding(
                padding: EdgeInsets.only(right: 32),
                child: AppText(
                  title: title ?? "",
                  color: AppColors.blackFont,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
          ],
        ),
      ),
      actions: [if (trailing != null) trailing!],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => AppBar().preferredSize;
}
