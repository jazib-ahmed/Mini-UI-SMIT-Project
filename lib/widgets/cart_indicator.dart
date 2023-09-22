import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../data/data.dart';

class CartIndicator extends StatelessWidget {
  CartIndicator({super.key});
  final cartToSet = cart.toSet();

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: AppColors.darkYellow,
      child: Text(
        style: const TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.w600,
        ),
        // cart_value.toString()
        cartToSet.length.toString(),
      ),
    );
  }
}
