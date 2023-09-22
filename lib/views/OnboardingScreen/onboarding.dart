import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/views/OnboardingScreen/widgets/button.dart';
import 'package:e_comerce_mini_project/views/home/grocery_home.dart';
import 'package:e_comerce_mini_project/views/home/home.dart';
import 'package:flutter/material.dart';

import '../../constants/string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int page_no = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final controller = PageController(initialPage: 0);
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightBlue,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.08, vertical: height * 0.07),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (index) {
                      // print(index);
                      setState(() {
                        page_no = index;
                      });
                    },
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                AppStrings.onboardingHeading1,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: width * 0.08,
                                    fontWeight: FontWeight.w700),
                              ),
                              Positioned(
                                  left: 110,
                                  bottom: 10,
                                  child: Image.asset(AppImages.SplashtextIcon)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            AppStrings.onboardingText1,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.lightGrey,
                              fontSize: width * 0.04,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Text(
                                AppStrings.onboardingHeading2,
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.white,
                                    fontSize: width * 0.08),
                              ),
                              Positioned(
                                  left: 110,
                                  bottom: 10,
                                  child: Image.asset(AppImages.SplashtextIcon)),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            AppStrings.onboardingText2,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.lightGrey,
                              fontSize: width * 0.04,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      height: height * 0.01,
                      // width: width * 0.2,
                      child: Chip(
                        label: Text(''),
                        backgroundColor: page_no == 0
                            ? AppColors.white
                            : AppColors.lighterGrey,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                      child: Chip(
                        label: Text(''),
                        backgroundColor: page_no == 1
                            ? AppColors.white
                            : AppColors.lighterGrey,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Image.asset(
                      AppImages.SplashIcon,
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    SizedBox(
                      height: 80,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: OnboardButton(
                        buttonText: 'Get Started',
                        buttonColor: AppColors.white,
                        onPress: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Home())));
                        },
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
