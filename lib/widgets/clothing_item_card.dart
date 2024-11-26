import 'package:flutter/material.dart';
import 'package:lab/models/clothing_item.dart';

import 'clothing_item_data.dart';

class ClothingCard extends StatelessWidget {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  const ClothingCard(
      {super.key,
      required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details",
              arguments: ClothingItem(
                  id: id,
                  name: name,
                  description: description,
                  price: price,
                  img: image))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)),
          child: ClothingData(image: image, name: name),
        ),
      ),
    );
  }
}
