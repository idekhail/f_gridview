
import 'package:flutter/material.dart';

class ThirdGrid extends StatelessWidget {
  const ThirdGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Third Grid';

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(title),
          ),
          body:
          GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                alignment: Alignment.center,
                child: Text("1",
                  style: TextStyle(fontSize: 30, ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[200],
                alignment: Alignment.center,
                child: const Text('2',
                style: TextStyle(fontSize: 30, ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[300],
                alignment: Alignment.center,
                child: const Text('3',
                  style: TextStyle(fontSize: 30, ),),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[400],
                alignment: Alignment.center,
                child: const Text('4',
                  style: TextStyle(fontSize: 30, ),),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[500],
                alignment: Alignment.center,
                child: const Text('5',
                  style: TextStyle(fontSize: 30, ),),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[600],
                alignment: Alignment.center,
                child: const Text('6',
                  style: TextStyle(fontSize: 30, ),),
              ),
            ],
          )
      ),
    );
  }
}

