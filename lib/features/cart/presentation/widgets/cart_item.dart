import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_events.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/presentation/widgets/network_image.dart';
import 'package:blocinterview/features/items/presentation/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.item}) : super(key: key);

  final ShopItem item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  PriceWidget(
                    price: item.price,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<CartBloc>(context).add(CartRemoveEvent(item: item));
                    },
                    child: const Icon(
                      Icons.remove,
                      color: Colors.redAccent,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.35,
                child: NetworkImageWidget(
                  url: item.image,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
