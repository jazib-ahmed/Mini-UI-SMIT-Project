import 'package:e_comerce_mini_project/views/shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../constants/string.dart';
import '../../../widgets/cart_indicator.dart';
import 'custom_textfield.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.28,
      padding: EdgeInsets.only(
          top: height * 0.02,
          bottom: height * 0.02,
          left: width * 0.05,
          right: width * 0.05),
      color: AppColors.lightBlue,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hey, ${AppStrings.userName}',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                    fontSize: width * 0.06),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShoppingCart()));
                },
                child: Container(
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
              ),
            ],
          ),
          SizedBox(
            height: height * 0.03,
          ),
          CustomTextfiedls(
            bgcolor: AppColors.white,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Container(
            height: height * 0.06,
            // color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DELIVERY TO',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w800,
                          color: AppColors.lightGrey,
                          fontSize: width * 0.03),
                    ),
                    Text(
                      'WITHIN       ',
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: AppColors.lightGrey,
                          fontSize: width * 0.03),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          AppStrings.address,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                              fontSize: width * 0.03),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                            quarterTurns: -1,
                            child: Icon(
                              size: 15.0,
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.lightGrey,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          AppStrings.deliveryTime,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.white,
                              fontSize: width * 0.03),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        RotatedBox(
                            quarterTurns: -1,
                            child: Icon(
                              size: 15.0,
                              Icons.arrow_back_ios_new_rounded,
                              color: AppColors.lightGrey,
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
