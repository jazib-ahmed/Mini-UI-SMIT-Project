import 'package:flutter/material.dart';

import 'data.dart';

class functions extends StatefulWidget {
  const functions({super.key});

  @override
  State<functions> createState() => _functionsState();
}

class _functionsState extends State<functions> {
  // AddToCart(index) {
  //   setState(() {
  //     cart.add(fastfoods[index]);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    AddToCart(index) {
      setState(() {
        cart.add(Fastfoods[index]);
      });
    }

    return const Placeholder();
  }
}
