import 'package:flutter/material.dart';

void main() {
  runApp(Pagetwelve());
}

class Pagetwelve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Increment Decrement Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IncrementDecrementPage(),
    );
  }
}
class IncrementDecrementPage extends StatefulWidget {
  @override
  _IncrementDecrementPageState createState() => _IncrementDecrementPageState();
}
class _IncrementDecrementPageState extends State<IncrementDecrementPage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  icon: Icon(Icons.remove,size:  40,),
                ),
                SizedBox(width: 5),
                Container(
                  height: 58,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      '$_counter',
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  icon: Icon(Icons.add,size: 40,weight: 20,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
