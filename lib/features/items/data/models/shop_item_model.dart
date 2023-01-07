import 'package:blocinterview/features/items/domain/entities/shop_item.dart';

class ShopItemModel extends ShopItem {
  const ShopItemModel({
    required String name,
    required String description,
    required double price,
    required String image,
  }) : super(
          description: description,
          name: name,
          price: price,
          image: image,
        );

  factory ShopItemModel.fromJson(Map<String, dynamic> json) {
    return ShopItemModel(
      description: json['description'],
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'name': name,
      'price': price,
      'image': image,
    };
  }
}
