import 'package:flutter/material.dart';
import 'package:furniture_shopping/features/home/home_view.dart';
import 'package:furniture_shopping/widgets/app/shipping-address_card.dart';
import 'features/shipping_address/shipping_address_view.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShippingAddressView(),
    );
  }
}
