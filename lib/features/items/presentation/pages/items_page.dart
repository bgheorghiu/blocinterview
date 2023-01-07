import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_state.dart';
import 'package:blocinterview/features/cart/presentation/pages/cart_page.dart';
import 'package:blocinterview/features/items/domain/entities/shop_item.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_bloc.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_events.dart';
import 'package:blocinterview/features/items/presentation/bloc/items_state.dart';
import 'package:blocinterview/features/items/presentation/widgets/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemsPage extends StatefulWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  void initState() {
    BlocProvider.of<ItemsBloc>(context).add(const ItemsLoadEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Store',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const CartPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: BlocBuilder<CartBloc, CartState>(
                      builder: (context, state) {
                        return Stack(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: state.maybeWhen(
                                loaded: (items) => Text(
                                  items.length.toString(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                loading: () => const CircularProgressIndicator(),
                                orElse: () => const SizedBox.shrink(),
                              ),
                            ),
                            const Center(
                              child: Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                state.maybeWhen(
                  initial: () {
                    return const SizedBox.shrink();
                  },
                  loaded: (List<ShopItem> items) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: items.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio:
                                (MediaQuery.of(context).size.width * 0.4) / (MediaQuery.of(context).size.height * 0.17),
                          ),
                          itemBuilder: ((context, index) => ShopCard(item: items[index])),
                        ),
                      ),
                    );
                  },
                  loading: () {
                    return const CircularProgressIndicator();
                  },
                  error: (String error) => Text(error),
                  orElse: () => const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
