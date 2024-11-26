class ClothingItem {
  int id;
  String name;
  String description;
  double price;
  String img;

  ClothingItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.img
  });

  ClothingItem.fromJson(Map<String, dynamic> data)
      :
        id = data['id'],
        name = data['name'],
        description = data['description'],
        price = data['price'],
        img = data['img'];
}
