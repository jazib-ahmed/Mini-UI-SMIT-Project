import 'package:e_comerce_mini_project/data/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FavouriteItems extends StatelessWidget {
  const FavouriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: favs[index],
          );
        }))
      ],
    );
  }
}
