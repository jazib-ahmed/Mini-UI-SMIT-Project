import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../data/data.dart';

class CustomProductCard extends StatefulWidget {
  final String item;
  final int price;
  final int index;
  final String listToShow;
  const CustomProductCard(
      {super.key,
      required this.item,
      required this.price,
      required this.index,
      required this.listToShow});

  @override
  State<CustomProductCard> createState() => _CustomProductCardState();
}

class _CustomProductCardState extends State<CustomProductCard> {
  // AddToCart({index}) {
  //   // var selected;
  //   setState(() {
  //     cart.add(Fastfoods[index]);
  //   });
  // }

  AddToCart({list, index}) {
    setState(() {
      cart.add(list[index]);
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(74, 197, 205, 210),
            borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(15),
        height: 197,
        width: 167,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "${widget.price.toString()}",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.item,
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
                    index: widget.index,
                    list: widget.listToShow,
                  );
                },
                child: Icon(
                  Icons.add,
                  size: 13,
                  color: AppColors.white,
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(width * 0.025, height * 0.02),
                  shape: CircleBorder(),
                  backgroundColor: AppColors.lightBlue,
                ),
              ),
            )
          ],
        ));

    // Container(
    //     decoration: BoxDecoration(
    //         color: Color.fromARGB(74, 197, 205, 210),
    //         borderRadius: BorderRadius.circular(20)),
    //     padding: EdgeInsets.all(15),
    //     height: 197,
    //     width: 167,
    //     child: Stack(
    //       children: [
    //         Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: [
    //             SvgPicture.asset(
    //               AppImages.SplashIconSvg,
    //               // height: 60,
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             Column(
    //               children: [
    //                 Row(
    //                   children: [
    //                     Text(
    //                       '\$',
    //                       style: TextStyle(
    //                           fontSize: 14, fontWeight: FontWeight.w600),
    //                     ),
    //                     Text(
    //                       "${widget.price.toString()}",
    //                       style: TextStyle(
    //                           fontSize: 14, fontWeight: FontWeight.w600),
    //                     ),
    //                   ],
    //                 ),
    //                 Align(
    //                     alignment: Alignment.topLeft,
    //                     child: Text(
    //                       widget.item,
    //                       style: TextStyle(
    //                           fontSize: 12,
    //                           fontWeight: FontWeight.w400,
    //                           color: AppColors.darkestGrey),
    //                     ))
    //               ],
    //             ),
    //           ],
    //         ),
    //         Positioned(
    //           bottom: 45,
    //           right: 0,
    //           child: ElevatedButton(
    //             onPressed: () {
    //               AddToCart(
    //                 index: widget.index,
    //                 // list: selected,
    //               );
    //               // setState(() {
    //               //   cart.add(fastfoods[index]);
    //               // });
    //             },
    //             child: Icon(
    //               Icons.add,
    //               size: 13,
    //               color: AppColors.white,
    //             ),
    //             style: ElevatedButton.styleFrom(
    //               fixedSize: Size(width * 0.025, height * 0.02),
    //               shape: CircleBorder(),
    //               backgroundColor: AppColors.lightBlue,
    //             ),
    //           ),
    //         )
    //       ],
    //     ));
  }
}
