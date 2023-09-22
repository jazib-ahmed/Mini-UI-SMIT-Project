import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/string.dart';

class CustomTextfiedls extends StatelessWidget {
  final Color? bgcolor;
  const CustomTextfiedls({super.key, this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 15, color: AppColors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search_rounded),
        prefixIconColor: bgcolor,
        label: Text(AppStrings.fieldText),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: TextStyle(fontSize: 15, color: AppColors.lightGrey),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide.none),
        filled: true,
        fillColor: AppColors.darkBlue,
      ),
    );
  }
}
