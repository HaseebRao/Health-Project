import 'package:flutter/material.dart';
import 'package:health/Pagetwentyfour.dart';
class Pagetwentythree extends StatelessWidget {
  const Pagetwentythree({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top:width* 0.03),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: width * 0.3,
                  height: height * 0.08,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/rebote.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.015,),
              SizedBox(height: height*0.06,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pagetwentyfour()),
                    );
                  },
                  child: Text(
                    textAlign:TextAlign.center,
                    "Intelligent Creative Partner,\n Welcome!",
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: height * 0.0245,
                        fontWeight: FontWeight.w700,
                        height: 1),
                  ),
                ),
              ),
              SizedBox(height: height*0.018,),
              SizedBox(height: height*0.06,
                child: Text(
                  textAlign:TextAlign.center,
                  "A AJ Remote Controller UI Kit made with,\nLove for Adobe XD",
                  style: TextStyle(
                      color: Colors.blueGrey.withOpacity(0.3),
                      fontSize: height * 0.015,
                      fontWeight: FontWeight.w700,
                      height: 1),
                ),
              ),
              SizedBox(height: height*0.01,),
              Container(
                width: width * 0.99,
                height: height * 0.50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/threeR.jpg'),
                    // Asset image path
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*0.12),
                child: Container(
                  height: height*0.01,
                  width: width*0.02,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ),
              SizedBox(height: height*0.07,),
              Container(
                height: height*0.07,
                width: width*0.82,
                decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Text(
                    textAlign:TextAlign.center,
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.02,
                        fontWeight: FontWeight.w900,
                        height: 1),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.25,top: height*0.03,),
                child: Row(
                  children: [
                    Text(
                      textAlign:TextAlign.center,
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.blueGrey.withOpacity(0.2),
                          fontSize: height * 0.015,
                          fontWeight: FontWeight.w500,
                          height: 1),
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                          color: Colors.blueGrey.withOpacity(0.6),
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w600,
                          height: 1),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
