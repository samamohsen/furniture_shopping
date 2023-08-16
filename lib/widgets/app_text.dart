import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.title,
    this.color = AppColors.primary,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.maxlines,
  });

  final String title;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxlines,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
