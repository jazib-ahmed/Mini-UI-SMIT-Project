import 'package:e_comerce_mini_project/constants/string.dart';
import 'package:e_comerce_mini_project/data/data.dart';
import 'package:e_comerce_mini_project/views/OnboardingScreen/widgets/button.dart';
import 'package:e_comerce_mini_project/views/products/widgets/Indicator_product.dart';
import 'package:e_comerce_mini_project/views/products/widgets/epantion_tile_2.dart';
import 'package:e_comerce_mini_project/views/products/widgets/expansion_tile1.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets/cart_indicator.dart';
import '../shopping_cart/shopping_cart.dart';

class ProductDetail extends StatefulWidget {
  final String product;
  final List list;
  final int index;

  final num price;
  final String details;

  const ProductDetail(
      {super.key,
      required this.product,
      required this.price,
      required this.details,
      required this.list,
      required this.index});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int on_page = 0;
  num review = 3;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final prod_controller = PageController(initialPage: 0);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            radius: width * 0.05,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.black,
                              size: width * 0.04,
                            ),
                            backgroundColor: Color.fromARGB(74, 197, 205, 210),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          // '{widget.listToShow}',
                          widget.product,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                              fontSize: width * 0.04),
                        ),
                      ],
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
                                AppImages.svgBlackCart,
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
                Container(
                  height: height * 0.12,
                  child: PageView(
                    controller: prod_controller,
                    onPageChanged: (index) {
                      setState(() {
                        on_page = index;
                      });
                    },
                    children: [
                      SvgPicture.asset(AppImages.SplashIconSvg),
                      SvgPicture.asset(AppImages.SplashIconSvg),
                      SvgPicture.asset(AppImages.SplashIconSvg),
                    ],
                  ),
                ),
                productIndicator(on_page: on_page),
                Container(
                  margin: EdgeInsets.only(top: height * 0.02),
                  padding: EdgeInsets.all(25),
                  height: height * 0.65,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(74, 197, 205, 210),
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.priductText,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Text(
                          widget.product,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '\$${widget.price.toString()}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.lightBlue,
                                  ),
                                ),
                                Text(
                                  '/KG',
                                  style: TextStyle(
                                      color: AppColors.lightBlue,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.lightBlue,
                              ),
                              child: Text(
                                '\$22.04 OFF',
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12),
                              ),
                            ),
                            Text(
                              'Reg: \$56.70 USD',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBar.builder(
                              itemSize: width * 0.06,
                              glow: false,
                              initialRating: 3,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 4.0),
                              itemBuilder: (context, index) => Icon(
                                Icons.star,
                                color: AppColors.lightYellow,
                              ),
                              onRatingUpdate: (rating) {
                                setState(() {
                                  review = rating;
                                });
                                print(rating);
                              },
                            ),
                            Text(
                              review.toString(),
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        Text(
                          widget.details,
                          style: TextStyle(color: AppColors.darkGrey),
                        ),
                        CustomExpansionTile(),
                        const Divider(
                          color: AppColors.darkGrey,
                          thickness: 1,
                        ),
                        CustomExpantionTile2(),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              child: Text('Add To Cart'),
                              style: ElevatedButton.styleFrom(
                                  foregroundColor: AppColors.lightBlue,
                                  elevation: 0,
                                  backgroundColor: AppColors.lightGrey,
                                  fixedSize: Size(width * 0.35, height * 0.08),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(
                                          color: AppColors.lightBlue))),
                              onPressed: () {
                                setState(() {
                                  cart.add(widget.list[widget.index]);
                                });
                              },
                            ),
                            ElevatedButton(
                              child: Text('Buy Now'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.lightBlue,
                                  fixedSize: Size(width * 0.35, height * 0.08),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ShoppingCart()));
                              },
                            ),
                          ],
                        )
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}
