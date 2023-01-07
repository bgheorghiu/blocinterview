import 'package:blocinterview/features/items/domain/entities/shop_item.dart';

abstract class CartRepository{
  void addItemCart(ShopItem item);
  void removeItemCart(ShopItem item);
  Set<ShopItem> getItemsCart();
}