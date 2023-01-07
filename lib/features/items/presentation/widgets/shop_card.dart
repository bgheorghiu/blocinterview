import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_events.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/presentation/pages/details_page.dart';
import 'package:blocinterview/features/items/presentation/widgets/network_image.dart';
import 'package:blocinterview/features/items/presentation/widgets/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ShopItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.17,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  PriceWidget(
                    price: item.price,
                  ),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<CartBloc>(context).add(CartAddEvent(item: item));
                    },
                    child: const Icon(
                      Icons.add_rounded,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DetailsPage(item: item),
                    ),
                  );
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.35,
                        height: MediaQuery.of(context).size.height * 0.11,
                        child: NetworkImageWidget(
                          url: item.image,
                        ),
                      ),
                      Flexible(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
