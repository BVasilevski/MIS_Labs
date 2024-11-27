import 'package:flutter/material.dart';

class ClothingData extends StatelessWidget {
  final String image;
  final String name;

  const ClothingData({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image.asset(image,
                fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text(
          "${name[0].toUpperCase()}${name.substring(1)}",
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}
