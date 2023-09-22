import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../constants/string.dart';
import 'cart_indicator.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Hey, ${AppStrings.userName}',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.white,
              fontSize: width * 0.06),
        ),
        Container(
          width: 35,
          height: 40,
          // color: AppColors.lightGrey,
          child: Stack(
            children: [
              Positioned(
                top: 8,
                child: SvgPicture.asset(
                  AppImages.svgCart,
                  width: 25,
                  height: 25,
                ),
              ),
              Positioned(
                top: 0,
                right: 1,
                child: CartIndicator(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
