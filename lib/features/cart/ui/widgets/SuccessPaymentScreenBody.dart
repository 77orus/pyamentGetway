import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';
import 'package:payment_getway/features/cart/ui/widgets/custom_divider.dart';
import 'package:payment_getway/features/cart/ui/widgets/order_details_column.dart';
import 'package:payment_getway/features/cart/ui/widgets/payment_card_widget.dart';
import 'package:payment_getway/features/cart/ui/widgets/qr_code_and_paid.dart';

class SuccessPaymentScreenBody extends StatelessWidget {
  const SuccessPaymentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 60,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.263,
            child: Row(
              children: List.generate(
                15,
                (index) => const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: divider(),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.24,
            left: -25,
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.24,
            right: -25,
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            right: 50,
            left: 50,
            top: -60,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.grey.shade200,
            ),
          ),
          const Positioned(
            right: 50,
            left: 50,
            top: -50,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 80,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 60,
            ),
            child: Column(
              children: [
                const Text(
                  "THANK YOU!",
                  style: FontStyles.font25,
                ),
                Text(
                  "Your payment was successfully",
                  style: FontStyles.font20,
                ),
                const SizedBox(height: 20),
                const OrderDetailsColumn(),
                const SizedBox(height: 16),
                const PaymentCardWidget(),
                const Spacer(),
                const QrCodeAndPaidButton(),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.03,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
