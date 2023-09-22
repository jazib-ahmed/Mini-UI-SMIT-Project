import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_comerce_mini_project/data/data.dart';

class ShoppingCart extends StatefulWidget {
  // Set _cartToSet = {};

  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final _cartToSet = cart.toSet();

  itemCounter({item}) {
    String ItemToCount = item;

    int value = 0;
    for (int i = 0; i < cart.length; i++) {
      if (ItemToCount == cart[i]) {
        value++;
      }
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            height: height * 0.4,
            width: width,
            color: AppColors.lightYellow,
            child: SvgPicture.asset(AppImages.ShoppingBg),
          ),
          cart.length == 0
              ? Center(
                  child: Text(
                    'Cart is Empty!',
                    style: TextStyle(fontSize: 30),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: _cartToSet.length,
                      itemBuilder: (context, index) {
                        int value =
                            itemCounter(item: _cartToSet.elementAt(index));
                        // _cartToSet = cart.toSet();
                        // print(_cartToSet);
                        List splitted = _cartToSet.elementAt(index).split('\n');
                        String item = splitted[0];
                        num price = int.parse(splitted[1]);
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      color: AppColors.black,
                                      onPressed: () {
                                        cart.remove(
                                            _cartToSet.elementAt(index));
                                        if (value == 1) {
                                          _cartToSet.remove(
                                              _cartToSet.elementAt(index));
                                        }
                                        setState(() {});
                                      },
                                      icon: Icon(Icons.remove)),
                                  Text(value.toString()),
                                  IconButton(
                                      onPressed: () {
                                        cart.add(_cartToSet.elementAt(
                                            index)); // if ((cart.contains(cart[index]))!) {
                                        //   // cart.insert(0, cart[index]);
                                        //   cart.add(cart[index]);
                                        // }
                                        // cart.insert(0, cart[index]);

                                        setState(() {});
                                      },
                                      icon: Icon(Icons.add)),
                                ],
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20,
                                // vertical: 5,
                              ),
                              title: Text(
                                item,
                                style: TextStyle(
                                    fontSize: width * 0.03,
                                    fontWeight: FontWeight.w500),
                              ),
                              leading: SvgPicture.asset(
                                AppImages.SplashIconSvg,
                                height: height * 0.05,
                              ),
                              subtitle: Row(
                                children: [
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                        fontSize: width * 0.03,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "${price.toString()}",
                                    style: TextStyle(
                                        fontSize: width * 0.03,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        );
                      }))
        ]),
      ),
    );
  }
}
