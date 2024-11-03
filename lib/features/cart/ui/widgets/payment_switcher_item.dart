import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentSwithcerItem extends StatelessWidget {
  const PaymentSwithcerItem({
    super.key,
    this.isSelected = false,
    required this.image,
  });

  final bool isSelected;
  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 70,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xff34A853) : Colors.grey,
          width: isSelected ? 2 : 1,
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 5,
            color:
                isSelected ? Colors.black.withOpacity(0.3) : Colors.transparent,
          ),
        ],
        color: Colors.white,
      ),
      child: SvgPicture.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
