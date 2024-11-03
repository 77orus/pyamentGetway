class PaymentSwitcherItemModel {
  final String image;

  PaymentSwitcherItemModel({required this.image});
}

List<PaymentSwitcherItemModel> get paymentItems => [
      PaymentSwitcherItemModel(image: 'assets/images/visa.svg'),
      PaymentSwitcherItemModel(image: 'assets/images/paypal.svg'),
      PaymentSwitcherItemModel(image: 'assets/images/apppay.svg'),
    ];
