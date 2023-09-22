import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/views/products/products.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/images.dart';
import '../../constants/string.dart';
import '../../data/data.dart';
import '../../widgets/header.dart';
import '../../widgets/cart_indicator.dart';
import '../shopping_cart/shopping_cart.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key});

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
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
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppImages.searchWhite,
                          width: width * 0.05,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShoppingCart()));
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
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Shop',
                    style: TextStyle(
                        fontSize: width * 0.13,
                        fontWeight: FontWeight.w100,
                        color: AppColors.white),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'By Category',
                    style: TextStyle(
                        fontSize: width * 0.13,
                        fontWeight: FontWeight.w800,
                        color: AppColors.white),
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
          Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.all(25),
                  itemCount: Categories.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      childAspectRatio: height * 0.001,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        var selected = Categories[index].keys.first.toString();
                        print(selected);
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Products(
                                      listToShow: selected,
                                    )));
                        setState(() {});
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(74, 197, 205, 210),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(
                                AppImages.SplashIconSvg,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    Categories[index].keys.first.toString(),
                                    style: TextStyle(
                                        fontSize: width * 0.035,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    Categories[index].values.first.toString(),
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.darkestGrey),
                                  )
                                ],
                              ),
                            ],
                          )),
                    );
                  }))
        ],
      )),
    );
  }
}
