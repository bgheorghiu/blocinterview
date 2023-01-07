import 'package:blocinterview/core/error/failures.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:dartz/dartz.dart';

abstract class ItemsRepository{
  Future<Either<Failure, List<ShopItem>>> getItems();
}