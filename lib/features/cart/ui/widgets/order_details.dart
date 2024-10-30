
import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.total,
    required this.title,
    this.style,
  });

  final String total;
  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style ?? FontStyles.font18,
        ),
        Text(
          "\$$total",
          style: style ?? FontStyles.font18,
        ),
      ],
    );
  }
}