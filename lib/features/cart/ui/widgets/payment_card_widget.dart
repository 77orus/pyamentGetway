import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.sizeOf(context).width * 0.8,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Image.asset("assets/images/logo.png"),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Credit Card",
                style: FontStyles.font18,
              ),
              Text(
                "Master Card **34",
                style: FontStyles.font20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
