import 'package:flutter/material.dart';
class Pagefourtyfour extends StatelessWidget {
  const Pagefourtyfour({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: width ,
            height: height ,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backq.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
