import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Number of items in the horizontal axis
            mainAxisSpacing: 4.0, // Spacing between rows
            crossAxisSpacing: 4.0, // Spacing between columns
          ),
          itemCount: 6, // Total number of items
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: Container(
                color: Colors.blueGrey[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Item $index',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.favorite), // Your icon
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
