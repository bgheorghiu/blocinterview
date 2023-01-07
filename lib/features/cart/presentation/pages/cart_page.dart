import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/cart/presentation/bloc/cart_state.dart';
import 'package:blocinterview/features/cart/presentation/widgets/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return Material(
          color: Colors.cyan.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                  ),
                  GestureDetector(
                    onTap: Navigator.of(context).pop,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.cyan.shade300,
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 22,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  state.when(
                    initial: () => noItemsWidget(),
                    loading: () => const CircularProgressIndicator(),
                    loaded: (items) {
                      if (items.isEmpty) {
                        return noItemsWidget();
                      }
                      return Column(
                        children: items.map((item) => CartItem(item: item)).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget noItemsWidget() {
    return const Center(
      child: Text(
        'Add items to cart',
        style: TextStyle(
          color: Colors.white54,
          fontWeight: FontWeight.w700,
          fontSize: 28,
        ),
      ),
    );
  }
}
