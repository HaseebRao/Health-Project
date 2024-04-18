import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SliderDemo(),
    );
  }
}
class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}
class _SliderDemoState extends State<SliderDemo> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body:SizedBox(
        height: height*0.6,
        width: width*0.89,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing:17.0,
            crossAxisSpacing: 22.0,
            childAspectRatio: 1.999,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.green, width: 2.0),
            ),
             
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_back_outlined,
                      size:30.0,
                      color: Colors.black,
                    ),
                    Text(
                      'Container $index',
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 6, // Total number of containers in the grid
        ),
      ),
    );
  }
}
