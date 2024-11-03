import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardDetailsWidget extends StatefulWidget {
  const CardDetailsWidget(
      {super.key, required this.formKey, required this.autovalidateMode});

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CardDetailsWidget> createState() => _CardDetailsWidgetState();
}

class _CardDetailsWidgetState extends State<CardDetailsWidget> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            isHolderNameVisible: true,
            onCreditCardWidgetChange: (CreditCardBrand brand) {},
            animationDuration: const Duration(milliseconds: 100),
          ),
          const SizedBox(height: 20),
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (cardModel) {
              cardNumber = cardModel.cardNumber;
              expiryDate = cardModel.expiryDate;
              cardHolderName = cardModel.cardHolderName;
              cvvCode = cardModel.cvvCode;

              setState(() {});
            },
            formKey: widget.formKey,
          ),
        ],
      ),
    );
  }
}

