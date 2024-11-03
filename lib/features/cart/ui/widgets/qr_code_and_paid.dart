import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';

class QrCodeAndPaidButton extends StatelessWidget {
  const QrCodeAndPaidButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/code.png"),
        const SizedBox(width: 40),
        Expanded(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.07,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.green,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                "PAID",
                style: FontStyles.font25.copyWith(
                  color: Colors.green,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
