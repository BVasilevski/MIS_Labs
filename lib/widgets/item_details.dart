import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String image;

  const ItemDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.red, width: 2)),
      child: Image.network(image,
          fit: BoxFit.contain, alignment: Alignment.center),
    );
  }
}
