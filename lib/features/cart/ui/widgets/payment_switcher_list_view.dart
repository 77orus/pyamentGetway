import 'package:flutter/material.dart';
import 'package:payment_getway/features/cart/data/models/payment_switcher_model.dart';
import 'package:payment_getway/features/cart/ui/widgets/payment_switcher_item.dart';

class PaymentSwitcherListView extends StatefulWidget {
  const PaymentSwitcherListView({super.key});

  @override
  State<PaymentSwitcherListView> createState() =>
      _PaymentSwitcherListViewState();
}

class _PaymentSwitcherListViewState extends State<PaymentSwitcherListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: PaymentSwithcerItem(
                image: paymentItems[index].image,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
