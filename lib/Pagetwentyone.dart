import 'package:flutter/material.dart';
import 'package:health/Pagetwentytwo.dart';
class Pagetwentyone extends StatelessWidget {
  const Pagetwentyone({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left:width*0.055,right:width*0.065,top:height *0.055),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    size:30.0,
                    color: Colors.black,
                  ),
                  GestureDetector(

                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pagetwentytwo()),
                      );
                    },
                    child: Text(
                      'Air Conditioner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.024,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                  ),
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(49.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/doll.jpg'),
                        // Asset image path
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 33.0,bottom:43,right: 10,top: 1),
                      child: Container(
                        height: height*0.001,
                        width: width*0.001,
                        decoration: BoxDecoration(
                          color:Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height*0.04,),
              Row(
                children: [
                  Container(
                    height: height*0.13,
                    width: width*0.412,
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade100,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top:height*0.038,left: width*0.145),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Humidity",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          Row(
                            children: [
                              Text(
                                " 45",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.033,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              Text(
                                "%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.019,
                                    fontWeight: FontWeight.w800,
                                    height: 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.04,),
                  Container(
                    height: height*0.13,
                    width: width*0.42,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent.shade100,
                        borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top:height*0.038,left: width*0.128),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Temperature",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          Row(
                            children: [
                              Text(
                                "  45",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.033,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              Text(
                                "%",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.019,
                                    fontWeight: FontWeight.w800,
                                    height: 0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: height*0.035),
                child: Text(
                  "18\u00B0C",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.019,
                      fontWeight: FontWeight.w600,
                      height: 0),
                ),
              ),
              SizedBox(height: height*0.01,),
              Container(
                height: height*0.37,
                width: width*0.77,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent.withOpacity(0.1),
                    border: Border(
                      // top: BorderSide(color: Colors.red, width: 4),
                      // bottom: BorderSide(color: Colors.yellow, width: 4),
                      // left: BorderSide(color: Colors.red, width: 4),
                      right: BorderSide(color: Colors.orange, width: 8),
                    ),
                  borderRadius: BorderRadius.circular(260)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    height: height*0.025,
                    width: width*0.55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        border: Border(
                          // top: BorderSide(color: Colors.red, width: 4),
                          // bottom: BorderSide(color: Colors.yellow, width: 4),
                          left: BorderSide(color: Colors.yellow, width: 8),
                          // right: BorderSide(color: Colors.orange, width: 8),
                        ),
                      borderRadius: BorderRadius.circular(140)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left:width*0.21,top:height*0.09, ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "18",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.075,
                                    fontWeight: FontWeight.w900,
                                    height: 0),
                              ),
                              Text(
                                "\u00B0C",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.035,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left:width*0.04),
                            child: Text(
                              "Cooling too",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.0145,
                                  fontWeight: FontWeight.w400,
                                  height: 0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.015,),
              Text(
                "28\u00B0C",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.019,
                    fontWeight: FontWeight.w600,
                    height: 0),
              ),

              Padding(
                padding: EdgeInsets.only(left:width*0.14,top: height*0.05),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: height*0.085,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.yellow.shade400,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Icon(
                            Icons.ac_unit,
                            size:33.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        Text(
                          "Cooling",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.0155,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),


                      ],
                    ),
                    SizedBox(width: width*0.04,),
                    Column(
                      children: [
                        Container(
                          height: height*0.085,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Icon(
                            Icons.wb_sunny_rounded,
                            size:33.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        Text(
                          "Heating",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.0155,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),


                      ],
                    ),
                    SizedBox(width: width*0.04,),
                    Column(
                      children: [
                        Container(
                          height: height*0.085,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child:  Icon(
                            Icons.stacked_line_chart,
                            size:33.0,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: height*0.01,),
                        Text(
                          "Fan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.0155,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
