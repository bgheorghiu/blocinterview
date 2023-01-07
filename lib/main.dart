import 'package:blocinterview/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:blocinterview/features/items/presentation/pages/items_page.dart';
import 'package:blocinterview/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/items/presentation/bloc/items_bloc.dart';

Future<void> main() async {
  await init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<ItemsBloc>(
          create: (context) => sl<ItemsBloc>(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => sl<CartBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ItemsPage(),
    );
  }
}
