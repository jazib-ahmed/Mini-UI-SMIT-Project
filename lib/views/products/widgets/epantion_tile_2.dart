import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CustomExpantionTile2 extends StatelessWidget {
  const CustomExpantionTile2({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.only(left: 0.0, right: 0.0),
      shape: RoundedRectangleBorder(),
      textColor: AppColors.lightBlue,
      collapsedTextColor: AppColors.black,
      collapsedIconColor: AppColors.darkGrey,
      iconColor: AppColors.lightBlue,
      title: Text(
        'Reviews',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.06,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Delicious burger with a juicy patty and fresh toppings. Highly recommended!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Divider(),
                Text(
                  'The pizza was amazing! Perfectly crispy crust and generous toppings.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
