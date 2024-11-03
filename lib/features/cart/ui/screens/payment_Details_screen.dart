import 'package:flutter/material.dart';
import 'package:payment_getway/core/widgets/custom_app_bar.dart';
import 'package:payment_getway/core/widgets/custom_elevated_button.dart';
import 'package:payment_getway/features/cart/ui/screens/success_payment_Screen.dart';
import 'package:payment_getway/features/cart/ui/widgets/card_details.dart';
import 'package:payment_getway/features/cart/ui/widgets/payment_switcher_list_view.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, title: "Payment Details"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: PaymentSwitcherListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: CardDetailsWidget(
                autovalidateMode: autovalidateMode,
                formKey: formKey,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: 30,
                    right: 12,
                    left: 12,
                    top: 0,
                  ),
                  child: CustomElevatedButton(
                    title: "Pay Now",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SuccessPaymentScreen(),
                          ),
                        );
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
