import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors.dart';
import 'package:furniture_shopping/core/utils.dart';
import 'package:furniture_shopping/widgets/app_text.dart';

class ShippingAddressCard extends StatelessWidget {
  ShippingAddressCard({
    required this.isSelected,
    super.key,
    required this.onTap,
  });
  final void Function() onTap;
  late bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: InkWell(
                      onTap: onTap,
                      child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          activeColor: AppColors.primary,
                          value: isSelected,
                          onChanged: (value) {
                            isSelected ? value = true : value = false;
                          }),
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: onTap,
                    child: AppText(
                      title: 'Use as the shipping address',
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 6,
                      ),
                      child: AppText(
                        title: 'Bruno Fernandes',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Image.asset(Utils.getPNGAssets('edit')),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
            ),
            SizedBox(height: 1),
            Container(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AppText(
                          title: '25 rue Robert Latouche, Nice, 06200, Côte',
                          color: AppColors.gray,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        AppText(
                          title: 'D’azur, France',
                          color: AppColors.gray,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
