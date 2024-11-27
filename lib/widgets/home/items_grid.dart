import 'package:flutter/material.dart';
import 'package:lab/models/clothing_item.dart';

import 'clothing_item_card.dart';

class ClothingGrid extends StatelessWidget {
  final List<ClothingItem> items;

  const ClothingGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 0.8,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final clothingItem = items[index];
        return ClothingCard(
          id: clothingItem.id,
          name: clothingItem.name,
          image: clothingItem.img,
          description: clothingItem.description,
          price: clothingItem.price,
        );
      },
    );
  }
}
