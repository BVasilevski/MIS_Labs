import 'package:flutter/material.dart';
import 'package:lab/models/clothing_item.dart';
import 'package:lab/widgets/clothing_item_card.dart';

class ClothingGrid extends StatefulWidget {
  final List<ClothingItem> items;

  const ClothingGrid({super.key, required this.items});

  @override
  _ClothingGridState createState() => _ClothingGridState();
}

class _ClothingGridState extends State<ClothingGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.items
          .map(
            (clothingItem) => ClothingCard(
                id: clothingItem.id,
                name: clothingItem.name,
                image: clothingItem.img,
                description: clothingItem.description,
                price: clothingItem.price),
          )
          .toList(),
    );
  }
}
