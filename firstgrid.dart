import 'package:flutter/material.dart';

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'First Grid List';

    return MaterialApp(
      //title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(15, (index) {
            return Center(
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            );
          }),
        ),
      ),
    );
  }
}