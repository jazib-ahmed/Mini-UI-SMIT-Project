import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:e_comerce_mini_project/views/home/grocery_home.dart';
import 'package:e_comerce_mini_project/views/home/widgets/Banner.dart';
import 'package:e_comerce_mini_project/widgets/cart_indicator.dart';
import 'package:e_comerce_mini_project/views/home/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/string.dart';
import '../../data/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../data/functions.dart';

import '../../widgets/CustomBottomBar.dart';
import '../../widgets/product_card.dart';
import '../catogries/shops.dart';
import '../favs/favourite.dart';
import '../products/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int onItem = 0;

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
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: CustomBottomBar(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: AppColors.black,
          items: items,
          index: onItem,
          animationDuration: Duration(milliseconds: 300),
          onTap: (index) {
            onItem = index;
            setState(() {});
          },
        ),

        backgroundColor: AppColors.white,
        body: getSelectedWidget(index: onItem),
      ),
    );
  }

  Widget? getSelectedWidget({required int index}) {
    Widget? widget;

    switch (index) {
      case 0:
        widget = GroceryHome();
        break;
      case 1:
        widget = ShopByCategory();
        break;
      case 2:
        widget = FavouriteItems();
        break;
      default:
    }
    return widget;
  }
}
