import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors.dart';
import 'package:furniture_shopping/core/utils.dart';
import 'package:furniture_shopping/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.price});
  final String image;
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                Utils.getPNGAssets(image),
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(Utils.getPNGAssets('shopping_bag')),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.primary.withOpacity(0.5),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        AppText(
          title: title,
          color: AppColors.darkGray,
          maxlines: 1,
        ),
        SizedBox(height: 5),
        AppText(
          title: price,
          color: AppColors.primary,
          fontWeight: FontWeight.bold,
          maxlines: 1,
        ),
      ],
    );
  }
}
