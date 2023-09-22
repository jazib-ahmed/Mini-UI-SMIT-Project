import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../data/data.dart';

class CustomDiscountBanner extends StatelessWidget {
  const CustomDiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 120,
          child: Row(
            children: [
              SvgPicture.asset(height: height * 0.15, AppImages.BannerBg),
            ],
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          child: Row(
            children: [
              SvgPicture.asset(height: height * 0.12, AppImages.BannerBg1),
            ],
          ),
        ),
        Positioned(
          top: 110,
          right: 208,
          child: Row(
            children: [
              SvgPicture.asset(AppImages.BannerBg2),
            ],
          ),
        ),
        Positioned(
          right: 10,
          top: 80,
          child: Row(
            children: [
              SvgPicture.asset(AppImages.BannerBg3),
            ],
          ),
        ),
        Container(
          height: height * 0.16,
          child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              itemCount: BannerCard.length,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 20,
                childAspectRatio: width * 0.0015,
                crossAxisCount: 1,
              ),
              itemBuilder: (context, index) {
                List<String> splitValues = BannerCard[index].split('\n');
                String value1 = splitValues[0];
                String value2 = splitValues[1];
                String value3 = splitValues[2];

                return Container(
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(value1,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: width * 0.08)),
                          Text(value2,
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: width * 0.08)),
                        ],
                      ),
                      Text(value3,
                          style: TextStyle(
                              color: AppColors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: width * 0.04)),
                    ],
                  ),
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                      color: index.isEven
                          ? AppColors.lightYellow
                          : AppColors.bannergrey,
                      borderRadius: BorderRadius.circular(25)),
                );
              }),
        ),
      ],
    );
  }
}
