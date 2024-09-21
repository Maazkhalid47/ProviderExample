import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/Providers/counter.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Counter())],
      child: MaterialApp(
        home: const Home(),
      )));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [FloatingActionButton(onPressed: () {
          context.read<Counter>().decrementCount();
        }),
          FloatingActionButton(onPressed: () {
            context.read<Counter>().incrementCount();
          }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${context.watch<Counter>().count}',style: TextStyle(color: Colors.black,fontSize: 20),),
          ],
        )],
      ),
    );
  }
}
