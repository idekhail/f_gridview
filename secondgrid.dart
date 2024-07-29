
import 'package:flutter/material.dart';

class SecondGrid extends StatelessWidget {
  const SecondGrid({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Second Grid';

    return MaterialApp(
      //title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body:
            MyGridView()

        // GridView.count(
        //           crossAxisCount: 3,
        //           children: List.generate(9, (index) {
        //             index++;
        //             return Center(
        //               child: Text(
        //
        //                 '$index',
        //                 style: TextStyle(fontSize: 30,
        //                 backgroundColor: Color(hashCode * 50 * index)),
        //               ),
        //             );
        //           }),
        // ),
      ),
    );
  }
}

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {

  // set an int with value -1 since no card has been selected
  int selectedCard = -1;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: false,
        scrollDirection: Axis.vertical,
        itemCount: 12,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: MediaQuery.of(context).size.width /
              (MediaQuery.of(context).size.height / 3),
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                // ontap of each card, set the defined int to the grid view index
                selectedCard = index;
              });
            },
            child: Card(
              // check if the index is equal to the selected Card integer
              color: selectedCard == index ? Colors.blue : Colors.amber,
              child: Container(
                height: 200,
                width: 200,
                child: Center(
                  child: Text(
                    '$index',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}