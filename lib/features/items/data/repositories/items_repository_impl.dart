import 'package:blocinterview/core/error/failures.dart';
import 'package:blocinterview/features/items/data/datasources/items_local_data_source.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/domain/repositories/items_repository.dart';
import 'package:dartz/dartz.dart';

class ItemsRepositoryImpl implements ItemsRepository {
  const ItemsRepositoryImpl({required this.localDataSource});

  final ItemsLocalDataSource localDataSource;

  @override
  Future<Either<Failure, List<ShopItem>>> getItems() async{
    try{
      final List<ShopItem> items = await localDataSource.getItems();

      return Right(items);
    } catch (e){
      return Left(ItemsLoadingFailure(error: e.toString()));
    }
  }
}
