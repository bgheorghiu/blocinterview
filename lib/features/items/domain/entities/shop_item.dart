import 'package:equatable/equatable.dart';

class ShopItem extends Equatable {
  const ShopItem({
    required this.description,
    required this.name,
    required this.price,
    required this.image,
  });

  final String description;

  final String name;

  final double price;

  final String image;

  @override
  List<Object> get props => [description, name, price, image];
}
