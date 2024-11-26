import 'package:flutter/material.dart';
import 'package:lab/models/clothing_item.dart';
import 'package:lab/widgets/item_details.dart';
import 'package:lab/widgets/item_title.dart';

import '../widgets/detail_back_button.dart';
import '../widgets/detail_data.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as ClothingItem;
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ItemDetails(image: arguments.img),
            ItemTitle(id: arguments.id, name: arguments.name),
            DetailData(id: arguments.id),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: const DetailBackButton(),
    );
  }
}
