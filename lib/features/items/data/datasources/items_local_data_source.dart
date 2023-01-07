import 'dart:convert';

import 'package:blocinterview/core/error/exceptions.dart';
import 'package:blocinterview/features/items/data/models/shop_item_model.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:flutter/services.dart';

abstract class ItemsLocalDataSource {
  Future<List<ShopItem>> getItems();
}

class ItemsLocalDataSourceImpl implements ItemsLocalDataSource {
  @override
  Future<List<ShopItem>> getItems() async {
    try {
      final String response = await rootBundle.loadString('assets/items.json');
      final Map<String, dynamic> data = await json.decode(response) as Map<String, dynamic>;
      return data['items'].map<ShopItem>((element) => ShopItemModel.fromJson(element)).toList();
    } catch (e) {
      throw ItemsLoadingException();
    }
  }
}
