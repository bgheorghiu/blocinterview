import 'package:blocinterview/core/usecases/usecase.dart';
import 'package:blocinterview/features/cart/domain/repositories/cart_repository.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:equatable/equatable.dart';

class AddItemCart implements UseCaseCart<void, CartParams> {
  final CartRepository repository;

  AddItemCart(this.repository);

  @override
  void call(CartParams params) {
    repository.addItemCart(params.item);
  }
}

class CartParams extends Equatable {
  const CartParams({required this.item});

  final ShopItem item;

  @override
  List<Object> get props => [item];
}
