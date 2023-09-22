import 'package:e_comerce_mini_project/views/OnboardingScreen/onboarding.dart';
import 'package:e_comerce_mini_project/views/shopping_cart/shopping_cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MiniEcommerceProject());
}

class MiniEcommerceProject extends StatefulWidget {
  MiniEcommerceProject({super.key});

  @override
  State<MiniEcommerceProject> createState() => _MiniEcommerceProjectState();
}

class _MiniEcommerceProjectState extends State<MiniEcommerceProject> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Manrope',
      ),
      home: SplashScreen(),
    );
  }
}
