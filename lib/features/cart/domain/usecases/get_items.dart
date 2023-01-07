import 'package:blocinterview/core/usecases/usecase.dart';
import 'package:blocinterview/features/cart/domain/repositories/cart_repository.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';

class GetItemsCart implements UseCaseCart<Set<ShopItem>, NoParams> {
  final CartRepository repository;

  GetItemsCart(this.repository);

  @override
  Set<ShopItem> call(NoParams params) {
    return repository.getItemsCart();
  }
}
