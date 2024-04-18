import 'package:flutter/material.dart';
import 'package:health/Pagethirtyfive.dart';
class Pagethirtyfour extends StatelessWidget {
  const Pagethirtyfour({super.key});

  @override
  Widget build(BuildContext context) {
var size = MediaQuery . of(context).size;
double height = size.height;
double width = size .width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding:  EdgeInsets.only(top: height*0.038,),
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.only(right: width*0.02,left: width*0.06),
                child: Container(
                  height: height*0.59,
                  width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/backimage.jpg'),
                      // Asset image path
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.15),
                    child: Row(
                      children: [
                        Text(
                          'Make ',
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontSize: height * 0.044,
                              fontWeight: FontWeight.w700,
                              height: 0),
                        ),
                        Text(
                          'Your Body',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.044,
                              fontWeight: FontWeight.w700,
                              height: 0),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: width*0.01),
                    child: Text(
                      'Healthy & Fit',
                      style: TextStyle(
                          color: Colors.deepPurpleAccent.withOpacity(0.9),
                          fontSize: height *0.044,
                          fontWeight: FontWeight.w700,
                          height: 0),
                    ),
                  ),

SizedBox(height: height*0.04,),
                  Text(
                    'Best GYM & Fitness Center Build Your',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w500,
                        height:1),
                  ),
                  SizedBox(height:height*0.008,),
                  Text(
                    'Healthy & ultimate fitness solution.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w500,
                        height:1),
                  ),
                  SizedBox(height: height*0.05,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>Pagethirtyfive()));
                    },
                    child: Container(
                      height: height*0.063,
                      width: width*0.55,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child:  Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.02,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
