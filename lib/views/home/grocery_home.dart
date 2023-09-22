import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/views/home/widgets/Banner.dart';
import 'package:e_comerce_mini_project/widgets/cart_indicator.dart';
import 'package:e_comerce_mini_project/views/home/widgets/custom_textfield.dart';
import 'package:e_comerce_mini_project/views/home/widgets/homeHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/string.dart';
import '../../data/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../data/functions.dart';

import '../../widgets/CustomBottomBar.dart';
import '../../widgets/product_card.dart';
import '../favs/favourite.dart';
import '../products/products.dart';
import '../products/products_details.dart';

class GroceryHome extends StatefulWidget {
  const GroceryHome({super.key});

  @override
  State<GroceryHome> createState() => _GroceryHomeState();
}

class _GroceryHomeState extends State<GroceryHome> {
  int onItem = 0;
  AddToCart({index, list}) {
    setState(() {
      list.add(Popular[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: onItem == 0 ? false : true,
              child: SizedBox(
                height: 10,
              ),
            ),
            SvgPicture.asset(
              onItem == 0 ? AppImages.homefilIcon : AppImages.homeIcon,
              color: onItem == 0 ? AppColors.lightYellow : AppColors.black,
            ),
            Visibility(
              visible: onItem == 0 ? false : true,
              child: Text(
                'Home',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 133, 147, 157)),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: onItem == 1 ? false : true,
              child: SizedBox(
                height: 10,
              ),
            ),
            SvgPicture.asset(
              onItem == 1 ? AppImages.categoryFillIcon : AppImages.categoryIcon,
              color: onItem == 1 ? AppColors.lightYellow : AppColors.black,
            ),
            Visibility(
              visible: onItem == 1 ? false : true,
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 133, 147, 157)),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: onItem == 2 ? false : true,
              child: SizedBox(
                height: 10,
              ),
            ),
            SvgPicture.asset(
              AppImages.heartIcon,
              color: onItem == 2 ? AppColors.lightYellow : AppColors.black,
            ),
            Visibility(
              visible: onItem == 2 ? false : true,
              child: Text(
                'Favourite',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 133, 147, 157)),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(08.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Visibility(
              visible: onItem == 3 ? false : true,
              child: SizedBox(
                height: 10,
              ),
            ),
            SvgPicture.asset(
              AppImages.moreIcon,
              color: onItem == 3 ? AppColors.lightYellow : AppColors.black,
            ),
            Visibility(
              visible: onItem == 3 ? false : true,
              child: Text(
                'More',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 133, 147, 157)),
              ),
            )
          ],
        ),
      ),
    ];

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(children: [
      HomeHeader(),
      // CustomDiscountBanner(),
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomDiscountBanner(),

              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  // top: 10,
                  bottom: 5,
                ),
                child: Row(
                  children: [
                    Text(AppStrings.GroceryText,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20)),
                  ],
                ),
              ),

              // CustomProductCard(),

              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(20),
                  itemCount: Popular.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      childAspectRatio: height * 0.001,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    /////////////+++++++++++++ DATA FETCHING!!!!!!!!!!!!!!!!!!!!
                    // var selected = Categories[index].keys.first.toString();
                    List splitted = Popular[index].split('\n');
                    var price = int.parse(splitted[1]);
                    String item = splitted[0];
                    /////////////////////////////////////////////////
                    return
                        // CustomProductCard(item: item, price: price, index: index);
                        GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail(
                                    index: index,
                                    list: Popular,
                                    product: item,
                                    price: price,
                                    details:
                                        'Top choice, $item in just \$$price')));
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(74, 197, 205, 210),
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(15),
                          height: 197,
                          width: 167,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SvgPicture.asset(
                                    AppImages.SplashIconSvg,
                                    // height: 60,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '\$',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "${price.toString()}",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            item,
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.darkestGrey),
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: 50,
                                right: 0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    AddToCart(
                                      list: cart,
                                      index: index,
                                    );
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 13,
                                    color: AppColors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize:
                                        Size(width * 0.025, height * 0.02),
                                    shape: CircleBorder(),
                                    backgroundColor: AppColors.lightBlue,
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   bottom: 0,
                              //   right: 0,
                              //   child: ElevatedButton(
                              //     onPressed: () {
                              //       AddToCart(
                              //         list: favs,
                              //         index: index,
                              //       );
                              //     },
                              //     child: Icon(
                              //       Icons.favorite,
                              //       size: 30,
                              //       color: AppColors.lightYellow,
                              //     ),
                              //     style: ElevatedButton.styleFrom(
                              //       fixedSize: Size(width * 0.025, height * 0.02),
                              //       shape: CircleBorder(),
                              //       elevation: 0,
                              //       backgroundColor: Colors.transparent,
                              //     ),
                              //   ),
                              // ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (PopularBool[index] == true) {
                                      PopularBool[index] = false;
                                    } else {
                                      PopularBool[index] = true;
                                    }
                                    if (favs.contains(Popular[index])) {
                                      PopularBool[index] = false;

                                      print('already in favourite');
                                    } else {
                                      AddToCart(
                                        list: favs,
                                        index: index,
                                      );
                                    }

                                    print(favs.length);
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    size: 15,
                                    color: PopularBool[index] == true
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize:
                                        Size(width * 0.025, height * 0.02),
                                    shape: CircleBorder(),
                                    elevation: 0,
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                              )
                            ],
                          )),
                    );
                  }),
            ],
          ),
        ),
      ),
    ]);
  }
}
