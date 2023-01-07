import 'package:blocinterview/core/error/failures.dart';
import 'package:blocinterview/core/usecases/usecase.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/domain/repositories/items_repository.dart';
import 'package:dartz/dartz.dart';

class GetItems implements UseCase<List<ShopItem>, NoParams> {
  final ItemsRepository repository;

  GetItems(this.repository);

  @override
  Future<Either<Failure, List<ShopItem>>> call() async {
    return await repository.getItems();
  }
}
