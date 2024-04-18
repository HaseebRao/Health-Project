import 'package:flutter/material.dart';
import 'package:health/Pagetwentyfive.dart';
class Pagetwentyfour extends StatelessWidget {
  const Pagetwentyfour({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height*0.999,
            width: width,
            child: Stack(
              children: [
                Container(
                  height: height*0.65,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0), // Adjust the value to control the roundness
                      bottomRight: Radius.circular(50.0), // Adjust the value to control the roundness
                    ),
                  ),
                ), Positioned(top: height*0.04,left: width*0.05,
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back,
                        size:24.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(top: height*0.095,left: width*0.16,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Pagetwentyfive()),
                      );
                    },
                    child: Text(
                      "Congratulation!\n Your Sysyem works Perfectly",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.0211,
                          fontWeight: FontWeight.w700,
                          height: 0),
                    ),
                  ),
                ),
                Positioned(top: height*0.181,left: width*0.13,
                  child: Container(
                    height: height*0.091,
                    width: width*0.75,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left: width*0.09,top:height*0.023,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Alexis Balencesco",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.blue.shade700,
                                    fontSize: height * 0.017,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              SizedBox(height: height*0.003,),
                              Text(
                                "Your result are here",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: height * 0.014,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: width*0.17,),
                        Container(
                          width: width * 0.12,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(49.0),
                            image: DecorationImage(
                              image: AssetImage('assets/images/rebote.jpg'),
                              // Asset image path
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 31.0,bottom:0,right: 6,top: 38),
                            child: Container(
                              height: height*0.001,
                              width: width*0.001,
                              decoration: BoxDecoration(
                                color:Colors.greenAccent,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(top: height*0.321,left: width*0.117,
                  child: Container(
                    height: height*0.425,
                    width: width*0.76,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.03),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      borderRadius: BorderRadius.circular(22)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height*0.04,),
                        Container(
                          height: height*0.24,
                          width: width*0.45,
                          decoration: BoxDecoration(
                            // color: Colors.blue,
                            image: DecorationImage(
                              image: AssetImage('assets/images/dog.jpg'),
                              // Asset image path
                              fit: BoxFit.contain,
                            ),

                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: width*0.09,top: height*0.055),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "You Know",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        fontSize: height * 0.012,
                                        fontWeight: FontWeight.w300,
                                        height: 0),
                                  ),
                                  Text(
                                    "\$987 USD",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue.shade700,
                                        fontSize: height * 0.023,
                                        fontWeight: FontWeight.w700,
                                        height: 0),
                                  ),
                                  Text(
                                    "Service Charge",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.2),
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w500,
                                        height: 0),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: width*0.16,),
                            Padding(
                              padding:  EdgeInsets.only(top:height*0.06),
                              child: Container(
                                height: height*0.026,
                                width: width*0.22,
                                decoration: BoxDecoration(
                                  color: Colors.blue.shade700,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    "MORE DETAILS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.009,
                                        fontWeight: FontWeight.w800,
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
                Positioned(top: height*0.804,left: width*0.15,
                  child: Text(
                    "Open Testing Turned out to be very successfully.\n Alexa's Safeguarded",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.2),
                        fontSize: height * 0.0145,
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                ),
                Positioned(top: height*0.88,left: width*0.1,
                  child: Container(
                    height: height*0.07,
                    width: width*0.77,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Text(
                        "TELL YOUR PARTNER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w800,
                            height: 0),
                      ),
                    ),
                  ),
                ),
                Positioned(left: width*0.43,top: height*0.98,
                  child: Text(
                    "Not Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: height * 0.014,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
