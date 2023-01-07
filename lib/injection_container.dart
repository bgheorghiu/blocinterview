import 'package:blocinterview/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:blocinterview/features/cart/domain/usecases/add_item.dart';
import 'package:blocinterview/features/cart/domain/usecases/get_items.dart';
import 'package:blocinterview/features/cart/domain/usecases/remove_item.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/domain/usecases/get_items.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/cart/domain/repositories/cart_repository.dart';
import 'features/items/data/datasources/items_local_data_source.dart';
import 'features/items/data/repositories/items_repository_impl.dart';
import 'features/items/domain/repositories/items_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<ItemsLocalDataSource>(
    () => ItemsLocalDataSourceImpl(),
  );

  // Repository
  sl.registerLazySingleton<ItemsRepository>(
    () => ItemsRepositoryImpl(
      localDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<CartRepository>(
    () => CartRepositoryImpl(<ShopItem>{}),
  );

  // Use cases
  sl.registerLazySingleton(() => GetItems(sl()));
  sl.registerLazySingleton(() => GetItemsCart(sl()));
  sl.registerLazySingleton(() => AddItemCart(sl()));
  sl.registerLazySingleton(() => RemoveItemCart(sl()));

  sl.registerFactory(
    () => ItemsBloc(
      getItems: sl(),
    ),
  );

  sl.registerFactory(
    () => CartBloc(
      addItemCart: sl(),
      removeItemCart: sl(),
      getItemsCart: sl(),
    ),
  );
}
