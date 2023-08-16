import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors.dart';
import 'package:furniture_shopping/core/utils.dart';
import 'package:furniture_shopping/widgets/app_app_bar.dart';
import 'package:furniture_shopping/widgets/app_text.dart';
import '../../widgets/app/shipping-address_card.dart';
import '../home/controller.dart';

class ShippingAddressView extends StatefulWidget {
  const ShippingAddressView({super.key});

  @override
  State<ShippingAddressView> createState() => _ShippingAddressViewState();
}

class _ShippingAddressViewState extends State<ShippingAddressView> {
  Controller controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppAppBar(
        leading: Image.asset(
          Utils.getPNGAssets('back'),
          color: AppColors.primary,
        ),
        title: 'Shipping address',
      ),
      floatingActionButton: SizedBox(
        height: 45,
        width: 45,
        child: FloatingActionButton(
          backgroundColor: AppColors.white,
          child: Image.asset(Utils.getPNGAssets('plus')),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.checkBoxes.length,
              itemBuilder: (context, index) {
                final checkBox = controller.checkBoxes[index];
                print(controller.checkBoxes[index]);
                print(controller.selectedCheckBox);
                return ShippingAddressCard(
                  isSelected: checkBox == controller.selectedCheckBox,
                  onTap: () {
                    controller.selectCheckBox(checkBox);
                    setState(() {});
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
