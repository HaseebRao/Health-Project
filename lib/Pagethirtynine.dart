import 'package:flutter/material.dart';
import 'package:health/Pagethirtyeight.dart';
class Pagethirtynine extends StatelessWidget {
  const Pagethirtynine({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
      SizedBox(
        height: height*0.96,
        width: width,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(49.0),
              image: DecorationImage(
                image: AssetImage('assets/images/ranbow.jpg'),
                // Asset image path
                fit: BoxFit.fill,
                // Image fit property
              ),
            ),
          ),

          Positioned(top: height*0.45,
            child: Text(
              "mmm",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: height * 0.176,
                  fontWeight: FontWeight.w900,
                  height: 0),
            ),
          ),
          Positioned(top: height*0.19,left: width*0.12,
            child: Container(
              width: width*0.82,
              height: height*0.37,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(49.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/saag.jpg'),
                  // Asset image path
                  fit: BoxFit.cover,
                  // Image fit property
                ),
              ),
            ),
          ),
          Positioned(top: height*0.89,left: width*0.35,
            child: GestureDetector(
              onTap:(){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=>Pagethirtyeight()),
                );
              },
              child: Text(
                "mmmEat >",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: height * 0.03,
                    fontWeight: FontWeight.w800,
                    height: 0),
              ),
            ),
          ),
        ],
      ),
      ),
          ],
        ),
      ),
    );
  }
}
