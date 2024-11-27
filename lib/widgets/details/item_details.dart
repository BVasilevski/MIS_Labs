import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final String image;

  const ItemDetails({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade200, // Light background for better contrast
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(150), // Circular image clipping
        child: Image.network(
          image,
          fit: BoxFit.cover,
          height: 200,
          width: 200,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(
              child: CircularProgressIndicator(), // Placeholder while loading
            );
          },
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(
              Icons.broken_image,
              size: 50,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
