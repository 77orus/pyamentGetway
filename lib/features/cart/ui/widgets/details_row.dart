import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';

class DetialsRow extends StatelessWidget {
  const DetialsRow({
    super.key,
    required this.title,
    required this.date,
    this.style,
  });
  final String title;
  final String date;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: style ?? FontStyles.font20,
        ),
        Text(
          date,
          style: style ?? FontStyles.font18Bold,
        ),
      ],
    );
  }
}
