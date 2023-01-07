import 'package:blocinterview/features/items/domain/usecases/get_items.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_bloc.dart';
import 'package:get_it/get_it.dart';

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

  // Use cases
  sl.registerLazySingleton(() => GetItems(sl()));

  sl.registerFactory(
        () => ItemsBloc(
      getItems: sl(),
    ),
  );




}
