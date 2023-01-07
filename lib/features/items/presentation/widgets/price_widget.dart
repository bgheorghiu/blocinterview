import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    Key? key,
    required this.price,
  }) : super(key: key);

  final double price;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          const TextSpan(
            text: '\$',
            style: TextStyle(color: Colors.cyan),
          ),
          TextSpan(text: price.toString()),
        ],
      ),
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
