import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_state.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = CartInitial;

  const factory CartState.loading() = CartLoading;
  
  const factory CartState.loaded({required Set<ShopItem> items}) = CartLoaded;
}
