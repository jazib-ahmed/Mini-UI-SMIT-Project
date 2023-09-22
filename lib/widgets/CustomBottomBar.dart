import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_comerce_mini_project/views/catogries/shops.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../views/favs/favourite.dart';
import '../views/home/grocery_home.dart';
import '../views/products/products.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int onItem = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            getSelectedWidget(index: onItem);
          },
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
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            getSelectedWidget(index: onItem);

            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => ShopByCategory())));
          },
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
                onItem == 1
                    ? AppImages.categoryFillIcon
                    : AppImages.categoryIcon,
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
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: () {
            getSelectedWidget(index: onItem);
            setState(() {});
          },
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

    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      buttonBackgroundColor: AppColors.black,
      items: items,
      index: onItem,
      animationDuration: Duration(milliseconds: 300),
      onTap: (index) {
        onItem = index;
        setState(() {});
        // print(onItem);
        //   //Handle button tap
        // if (index == 0) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ShopByCategory(),
        //     ),
        //   );
        // } else if (index == 1) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ShopByCategory(),
        //     ),
        //   );
        // } else if (index == 2) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ShopByCategory(),
        //     ),
        //   );
        // } else if (index == 3) {
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => ShopByCategory(),
        //     ),
        //   );
        // }
      },
    );
  }

  Widget? getSelectedWidget({required int index}) {
    Widget? widget;

    switch (index) {
      case 1:
        widget = Products(
          listToShow: 'Fastfoods',
        );
        break;
      case 2:
        widget = FavouriteItems();
        break;
      default:
    }
    return widget;
  }
}
