import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CustomExpansionTile extends StatelessWidget {
  CustomExpansionTile({
    super.key,
  });

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
        'Nutritional facts',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.06,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Serving Size: 1 slice (28g)',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Calories: 80',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Total Fat: 2g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Saturated Fat: 1g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Cholesterol: 5mg',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sodium: 180mg',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Total Carbohydrates: 13g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Dietary Fiber: 1g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Sugars: 1g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Protein: 2g',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
