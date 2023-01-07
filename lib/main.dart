import 'package:blocinterview/features/items/presentation/bloc/items_events.dart';
import 'package:blocinterview/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/items/domain/entities/shop_item.dart';
import 'features/items/presentation/bloc/items_bloc.dart';
import 'features/items/presentation/bloc/items_state.dart';

Future<void> main() async {
  await init();
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ItemsBloc>(
      create: (context) => sl<ItemsBloc>(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage

  ({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    BlocProvider.of<ItemsBloc>(context).add(const ItemsLoadEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocBuilder<ItemsBloc, ItemsState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                state.maybeWhen(
                  initial: () {
                    print('here');
                    return SizedBox.shrink();
                  },
                  loaded: (List<ShopItem> items) {
                    print(items);
                    return SizedBox.shrink();
                  },
                  loading: () {
                    print('here2');

                    return SizedBox.shrink();
                  },
                  error: (String error) {
                    print(error);
                    return SizedBox.shrink();},
                  orElse: () => SizedBox.shrink(),
                ),
                Text(
                  '$_counter',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        );
      });
    });
  }
}
