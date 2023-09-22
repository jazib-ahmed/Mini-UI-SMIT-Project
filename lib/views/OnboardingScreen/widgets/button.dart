import 'package:e_comerce_mini_project/constants/colors.dart';
import 'package:e_comerce_mini_project/constants/images.dart';
import 'package:flutter/material.dart';

class OnboardButton extends StatelessWidget {
  final Color? buttonColor;
  final void Function()? onPress;
  final String buttonText;
  const OnboardButton(
      {super.key, this.onPress, required this.buttonText, this.buttonColor});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return ElevatedButton(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            buttonText,
            style: TextStyle(
                color: AppColors.darkGrey,
                fontWeight: FontWeight.w600,
                fontSize: width * 0.04),
          ),
          Icon(
            Icons.arrow_forward,
            size: width * 0.07,
            color: AppColors.darkGrey,
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          20,
        )),
        backgroundColor: buttonColor,
      ),
    );
  }
}
