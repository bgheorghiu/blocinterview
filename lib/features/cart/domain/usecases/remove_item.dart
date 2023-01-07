import 'package:blocinterview/core/usecases/usecase.dart';
import 'package:blocinterview/features/cart/domain/repositories/cart_repository.dart';
import 'package:blocinterview/features/cart/domain/usecases/add_item.dart';

class RemoveItemCart implements UseCaseCart<void, CartParams> {
  final CartRepository repository;

  RemoveItemCart(this.repository);

  @override
  void call(CartParams params) {
    repository.removeItemCart(params.item);
  }
}
