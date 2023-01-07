import 'package:bloc/bloc.dart';
import 'package:blocinterview/features/items/domain/usecases/get_items.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_events.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_state.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  ItemsBloc({required this.getItems}) : super(const ItemsInitial()) {
    on<ItemsEvent>(
      (event, emit) async {
        await event.when(
          load: () async {
            emit(const ItemsLoading());

            final items = await getItems.call();

            items.fold(
              (error) => emit(ItemsError(error: error.toString())),
              (items) => emit(ItemsLoaded(items: items)),
            );
          },
        );
      },
    );
  }

  final GetItems getItems;
}
