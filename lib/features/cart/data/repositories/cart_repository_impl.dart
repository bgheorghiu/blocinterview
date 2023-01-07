import 'package:blocinterview/features/cart/domain/repositories/cart_repository.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';

class CartRepositoryImpl implements CartRepository {
  CartRepositoryImpl(this.items);

  Set<ShopItem> items;

  @override
  void addItemCart(ShopItem item) {
    items.add(item);
  }

  @override
  Set<ShopItem> getItemsCart() {
    return items;
  }

  @override
  void removeItemCart(ShopItem item) {
    items.remove(item);
  }
}
