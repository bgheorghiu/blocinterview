import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_events.freezed.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.add({required ShopItem item}) = CartAddEvent;
  const factory CartEvent.remove({required ShopItem item}) = CartRemoveEvent;
}