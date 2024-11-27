import 'package:flutter/material.dart';
import 'package:lab/widgets/home/items_grid.dart';

import '../models/clothing_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var clothingItems = [
    ClothingItem(
        id: 1,
        name: "Jacket",
        description: "Jacket",
        price: 150.0,
        img: "../assets/static/jacket.jpg"),
    ClothingItem(
        id: 2,
        name: "Boots",
        description: "Boots",
        price: 100.0,
        img: "../assets/static/boots.jpg"),
    ClothingItem(
        id: 3,
        name: "T-Shirt",
        description: "T-Shirt",
        price: 30.0,
        img: "../assets/static/shirt.jpg"),
    ClothingItem(
        id: 4,
        name: "Hat",
        description: "Hat",
        price: 10.0,
        img: "../assets/static/hat.jpg")
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 24,
              )),
          title: const Text("Clothing Store App",
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
        body: ClothingGrid(items: clothingItems));
  }
}
