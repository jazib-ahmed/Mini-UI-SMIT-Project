import 'package:e_comerce_mini_project/views/products/products_details.dart';
import 'package:e_comerce_mini_project/views/products/widgets/chips.dart';
import 'package:e_comerce_mini_project/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../constants/string.dart';
import '../../data/data.dart';
import '../../widgets/product_card.dart';
import '../../widgets/cart_indicator.dart';
import '../shopping_cart/shopping_cart.dart';

class Products extends StatefulWidget {
  final String listToShow;
  const Products({super.key, required this.listToShow});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  AddToCart({list, index}) {
    setState(() {
      cart.add(list[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    // horizontal: 10,
                    vertical: 20),
                child: Container(
                  height: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                size: width * 0.03,
                              ),
                              backgroundColor:
                                  Color.fromARGB(74, 197, 205, 210),
                            ),
                          ),
                          Text(
                            '${widget.listToShow}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                                fontSize: width * 0.04),
                          ),
                          Text(
                            'Hey, ${AppStrings.userName}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                                fontSize: width * 0.06),
                          ),
                          SvgPicture.asset(
                            AppImages.search,
                            width: width * 0.05,
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
                      Chips(),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                    padding: EdgeInsets.all(20),
                    itemCount: 15,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 15,
                        childAspectRatio: height * 0.001,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      /////////////+++++++++++++ DATA FETCHING!!!!!!!!!!!!!!!!!!!!
                      // var selected;
                      // Categories[index].keys.first.toString();

                      var selected = func(widget.listToShow);
                      List splitted = selected![index].split('\n');
                      String item = splitted[0];
                      var price = int.parse(splitted[1]);
                      /////////////////////////////////////////////////
                      return GestureDetector(
                        onTap: () async {
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetail(
                                      index: index,
                                      list: selected,
                                      product: item,
                                      price: price,
                                      details:
                                          'Top choice, $item in just \$$price')));
                          setState(() {});
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
                                  bottom: 45,
                                  right: 0,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      AddToCart(
                                        index: index,
                                        list: selected,
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
                                )
                              ],
                            )),
                      );
                    }),
              ),
            ]),
      ),
    );
  }
}

List? func(listToShow) {
  if (listToShow == 'Fastfoods') {
    // Enum names = {Fastfoods};
    return Fastfoods;
  } else if (listToShow == 'Fishes') {
    return Fishes;
  } else if (listToShow == 'Rolls') {
    return Rolls;
  } else if (listToShow == 'Meats') {
    return Meats;
  } else if (listToShow == 'Barbeque') {
    return Barbeque;
  } else if (listToShow == 'Vegetables') {
    return Vegetables;
  } else if (listToShow == 'Fruits') {
    return Fruits;
  }
}
