import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors.dart';
import 'package:furniture_shopping/core/utils.dart';
import 'package:furniture_shopping/widgets/app_text.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.title,
      required this.image,
      required this.isSelected,
      required this.onTap});
  final String title;
  final String image;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 44,
              width: 44,
              child: Image.asset(
                Utils.getPNGAssets(image),
                color: AppColors.white,
              ),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : AppColors.lightGray,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          SizedBox(height: 5),
          AppText(
            title: title,
            fontWeight: FontWeight.w600,
            color: isSelected ? AppColors.primary : AppColors.gray,
          )
        ],
      ),
    );
  }
}
