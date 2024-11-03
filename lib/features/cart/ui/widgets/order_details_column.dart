import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';
import 'package:payment_getway/features/cart/ui/widgets/details_row.dart';

class OrderDetailsColumn extends StatelessWidget {
  const OrderDetailsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetialsRow(
          title: "Date",
          date: "12/12/2022",
        ),
        SizedBox(height: 20),
        DetialsRow(
          title: "Time",
          date: "10:10 AM",
        ),
        SizedBox(height: 20),
        DetialsRow(
          title: "To",
          date: "Sally Smith",
        ),
        Divider(
          thickness: 2.5,
          height: 44,
        ),
        DetialsRow(
          title: "Total",
          date: "42.97",
          style: FontStyles.font24,
        ),
      ],
    );
  }
}
