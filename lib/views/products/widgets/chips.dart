import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class Chips extends StatefulWidget {
  const Chips({super.key});

  @override
  State<Chips> createState() => _ChipsState();
}

class _ChipsState extends State<Chips> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Color chipColor = AppColors.white;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // InkWell(
          //   onTap: () {
          //     chipColor = AppColors.lightYellow;
          //     setState(() {});
          //   },
          //   child: Container(
          //     // padding: EdgeInsets.all(width * 0.018),
          //     padding: EdgeInsets.only(
          //       top: width * 0.015,
          //       left: width * 0.025,
          //       right: width * 0.025,
          //       bottom: width * 0.015,
          //     ),
          //     decoration: BoxDecoration(
          //       // border: Border.all(width: 1, color: AppColors.lightGrey),
          //       borderRadius: BorderRadius.circular(width * 0.4),
          //       color: chipColor,
          //     ),
          //     child: Text(
          //       'Popular',
          //       style: TextStyle(
          //           color: AppColors.white,
          //           fontWeight: FontWeight.w600,
          //           fontSize: width * 0.03),
          //     ),
          //   ),
          // ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              // border: Border.all(width: 1, ),
              borderRadius: BorderRadius.circular(width * 0.4),
              color: AppColors.lightYellow,
            ),
            child: Text(
              'Products',
              style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(width * 0.4),
            ),
            child: Text(
              'Low price',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(width * 0.4),
            ),
            child: Text(
              'Fishes',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(width * 0.4),
              // color: AppColors.trans,
            ),
            child: Text(
              'Vegetables',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(width * 0.4),
              // color: AppColors.trans,
            ),
            child: Text(
              'Fruits',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
          SizedBox(
            width: width * 0.02,
          ),
          Container(
            // padding: EdgeInsets.all(width * 0.018),
            padding: EdgeInsets.only(
              top: width * 0.015,
              left: width * 0.025,
              right: width * 0.025,
              bottom: width * 0.015,
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(width * 0.4),
              // color: AppColors.trans,
            ),
            child: Text(
              'Meats',
              style: TextStyle(
                  color: AppColors.darkGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.03),
            ),
          ),
        ],
      ),
    );
  }
}
