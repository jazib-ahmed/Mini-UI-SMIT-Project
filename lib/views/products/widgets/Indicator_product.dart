import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class productIndicator extends StatelessWidget {
  productIndicator({super.key, required this.on_page});
  final int on_page;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.25,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 5,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: on_page == 0 ? AppColors.lightYellow : AppColors.lightGrey,
            ),
          ),
          Container(
            height: 5,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: on_page == 1 ? AppColors.lightYellow : AppColors.lightGrey,
            ),
          ),
          Container(
            height: 5,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: on_page == 2 ? AppColors.lightYellow : AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
