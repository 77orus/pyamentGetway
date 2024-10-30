import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/app_images.dart';
import 'package:payment_getway/core/utils/font_styles.dart';
import 'package:payment_getway/features/cart/ui/widgets/order_details.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Image.asset(
                AppImages.basket,
              ),
            ),
          ),
          const OrderDetails(
            title: "Order Subtotal",
            total: "42.97",
          ),
          const OrderDetails(
            title: "Discount",
            total: "0",
          ),
          const OrderDetails(
            title: "Shipping",
            total: "8",
          ),
          const Divider(
            thickness: 1.5,
            height: 34,
          ),
          const OrderDetails(
            title: "Total",
            total: "51.97",
            style: FontStyles.font24,
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: double.infinity,
            height: 70,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff34A853),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Complete Order",
                style: FontStyles.font22,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
