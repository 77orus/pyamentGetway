import 'package:flutter/material.dart';
import 'package:payment_getway/core/utils/font_styles.dart';

PreferredSizeWidget? appBar(BuildContext context, {required String title}) {
  return AppBar(
    title: Text(
      title,
      style: FontStyles.font25,
    ),
    centerTitle: true,
    // backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_sharp,
        size: 30,
      ),
    ),
  );
}
