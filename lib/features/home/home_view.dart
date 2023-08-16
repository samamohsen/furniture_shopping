import 'package:flutter/material.dart';
import 'package:furniture_shopping/core/app_colors.dart';
import 'package:furniture_shopping/core/models/product.dart';
import 'package:furniture_shopping/core/utils.dart';
import 'package:furniture_shopping/features/home/controller.dart';
import 'package:furniture_shopping/widgets/app/product_card.dart';
import 'package:furniture_shopping/widgets/app_app_bar.dart';

import '../../widgets/app/category_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  Controller controller = Controller();
  @override
  void initState() {
    controller.selectedCategory = controller.categories.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppAppBar(
        leading: Image.asset(Utils.getPNGAssets('search')),
        upperTitle: 'Make Home',
        title: 'BEAUTIFUL',
        trailing: Image.asset(Utils.getPNGAssets('cart')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 68,
              child: ListView.builder(
                  itemCount: controller.categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final category = controller.categories[index];
                    print(controller.categories[index]);
                    print(controller.selectedCategory);
                    return CategoryCard(
                      title: category.title,
                      image: category.image,
                      isSelected: controller.selectedCategory == category,
                      onTap: () {
                        controller.selectedCategory = category;
                        setState(() {});
                      },
                    );
                  }),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 157 / 253,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      image: Products.products[index].image,
                      title: Products.products[index].title,
                      price: Products.products[index].price,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
