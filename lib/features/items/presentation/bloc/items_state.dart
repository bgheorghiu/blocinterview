import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'items_state.freezed.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState.initial() = ItemsInitial;

  const factory ItemsState.loading() = ItemsLoading;

  const factory ItemsState.error({required String error}) = ItemsError;

  const factory ItemsState.loaded({required List<ShopItem> items}) = ItemsLoaded;
}
