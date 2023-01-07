import 'package:bloc/bloc.dart';
import 'package:blocinterview/core/usecases/usecase.dart';
import 'package:blocinterview/features/cart/domain/usecases/add_item.dart';
import 'package:blocinterview/features/cart/domain/usecases/get_items.dart';
import 'package:blocinterview/features/cart/domain/usecases/remove_item.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_events.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc({
    required this.addItemCart,
    required this.removeItemCart,
    required this.getItemsCart,
  }) : super(const CartInitial()) {
    on<CartEvent>(
      (event, emit) async {
        await event.when(
          add: (item) async {
            emit(const CartLoading());

            addItemCart.call(CartParams(item: item));

            emit(CartLoaded(items: getItemsCart.call(NoParams())));
          },
          remove: (item) async {
            emit(const CartLoading());

            removeItemCart.call(CartParams(item: item));

            emit(CartLoaded(items: getItemsCart.call(NoParams())));
          },
        );
      },
    );
  }

  final AddItemCart addItemCart;
  final RemoveItemCart removeItemCart;
  final GetItemsCart getItemsCart;
}
