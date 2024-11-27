import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Back',
        label: const Text("Back"),
        icon: const Icon(Icons.arrow_back),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
