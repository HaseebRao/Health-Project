import 'package:flutter/material.dart';
class Floatingbutton extends StatefulWidget {
  const Floatingbutton({super.key});

  @override
  State<Floatingbutton> createState() => _FloatingbuttonState();
}

class _FloatingbuttonState extends State<Floatingbutton> {
  // int x =0;
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    // print("rebuild");
    return Scaffold(
      appBar: AppBar(
        // title: Text("My first App"),
      ),
      body: Column(
        children: [
          Container(
        height: height*0.07,
        width: width*0.6,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border.all(color: Colors.white,width: width*0.003),
          borderRadius: BorderRadius.circular(11),),
            child: GestureDetector(
              onTap: () {
                incrementCounter();
              },
              child: Center(
                child: Text(
                  'Add to bag',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.021,
                      fontWeight: FontWeight.w600,
                      height: 0),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            ' $counter',
            style: TextStyle(fontSize: 24,color: Colors.red,),
          ),
    //       Center(child: Text(x.toString(),style: TextStyle(fontSize: 38),)),
    //       Container(
    //         height: height*0.07,
    //         width: width*0.4,
    //         decoration: BoxDecoration(
    //           color: Colors.greenAccent,
    //          onPressed: *(){
    //             x++;
    // }
    //         ),
    //       ),
        ],
      ),

      // floatingActionButton: FloatingActionButton(
      //
      //   onPressed: (){
      //     x++;
      //     setState(() {
      //
      //     });
      //     print(x.toString());
      //   },
      //   child:Text(
      //     'Add to bag',
      //     style: TextStyle(
      //         color: Colors.white,
      //         fontSize: height * 0.021,
      //         fontWeight: FontWeight.w600,
      //         height: 0),
      //   ),
      // ),

    );
  }
}

