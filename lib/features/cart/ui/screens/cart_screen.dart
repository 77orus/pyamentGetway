import 'package:flutter/material.dart';
import 'package:payment_getway/core/widgets/custom_app_bar.dart';
import 'package:payment_getway/features/cart/ui/widgets/cart_Screen_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: 'My Cart'),
      body: const CartScreenBody(),
    );
  }
}
