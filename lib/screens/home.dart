import 'package:flutter/material.dart';
import 'package:lab/widgets/items_grid.dart';

import '../models/clothing_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ClothingItem> clothingItems = List.generate(
      10,
      (index) => ClothingItem(
          id: index,
          name: "Item $index",
          description: "Description $index",
          price: index.toDouble(),
          img: "../assets/static/image.jpg"));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[100],
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 24,
            )),
        title: const Text("Pokemon App",
            style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white, size: 24))
        ],
      ),
      body: ClothingGrid(items: clothingItems),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.share_rounded),
      ),
    );
  }
}
