import 'package:flutter/material.dart';
import 'package:payment_getway/core/widgets/custom_app_bar.dart';
import 'package:payment_getway/features/cart/ui/widgets/SuccessPaymentScreenBody.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: "Payment Details"),
      body: const SuccessPaymentScreenBody(),
    );
  }
}
