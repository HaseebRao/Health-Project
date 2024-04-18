import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';
class pagethree extends StatelessWidget {
pagethree({super.key});
final Controller c = Get.put(Controller());
  List<String> text=[
    'Green Power',
    'lime Landse',
    'Home Green',
    'Your Cardes',

  ];
List<String> number=[
  '9,508\$',
  '7,380\$',
  '2,694\$',
  '4,008\$',
];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height*0.26,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      height: height*0.22,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60.0),  // Specify the radius for the bottom left corner
                        ),
                      ),
                     child: Padding(
                       padding:  EdgeInsets.only(left: width*0.70,),
                       child: Icon(
                          Icons.personal_injury_outlined,
                          size: 43.0,
                          color: Colors.green,
                        ),
                     ),
                    ),
                    Container(
                      height: height*0.14,
                      width: width*0.43,
                      decoration: BoxDecoration(
                        color:Colors.lightGreen,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(60.0),  // Specify the radius for the bottom left corner
                        ),
                      ),
                     child: Padding(
                       padding: const EdgeInsets.only(top: 70.0,right: 35),
                       child: Text(
                          'Your cart',
                         textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w700,
                              height: 0),
                        ),
                     ),
                
                    )
                  ],
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 20),
                child: Column(
                  children: [
                    SizedBox(width: width,height: height*0.25,
                      child:ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 4,
          
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 23.0),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.23,
                                  height: height * 0.11,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    // Container background color
                                    border: Border.all(
                                      color: Colors.white, // Border color
                                      width: 2.0, // Border width
                                    ),
                                    borderRadius: BorderRadius.circular(13.0),
                                    // Border radius
                                    image: DecorationImage(
                                      image: AssetImage('assets/images/lemon.jpg'),
                                      // Asset image path
                                      fit: BoxFit.fill,
                                      // Image fit property
                
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.026,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Smoothies',
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: height * 0.020,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                    SizedBox(
                                      height: height * 0.004,
                                    ),
                                    Text(
                                      text[index],
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: height * 0.020,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                    SizedBox(
                                      height: height * 0.014,
                                    ),
                                    Text(
                                      number[index],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.023,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 51.0),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 60.0),
                                        child: Container(
                                          height:height*0.039,
                                          width: width*0.075,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(
                                              color: Colors.white, // Border color
                                              width: 2.0, // Border width
                                            ),
                                          ),
                                          child:Icon(
                                            Icons.add_alert_rounded,
                                            size: 20.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.016,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                           Container(
                                             height:height*0.038,
                                             width: width*0.075,
                                             decoration: BoxDecoration(
                                               color: Colors.white,
                                               borderRadius: BorderRadius.circular(9),
                                             ),
                                             child:Icon(
                                               Icons.remove,
                                               size: 28.0,
                                               color: Colors.green,
                                             ),
                                           ),
                                            SizedBox(
                                              width: width * 0.014,
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: height * 0.020,
                                                  fontWeight: FontWeight.w700,
                                                  height: 0),
                                            ),
                                            SizedBox(
                                              width: width * 0.014,
                                            ),
                                            Container(
                                              height:height*0.038,
                                              width: width*0.075,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(9),
                                              ),
                                              child:Icon(
                                                Icons.add,
                                                size: 28.0,
                                                color: Colors.green,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.055,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.gas_meter_sharp,
                      size: 43.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: width*0.013,),
                    Container(
                      height: height * 0.055,
                      width: width * 0.73,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.lightGreenAccent, // Choose the border color
                          width: 2.0,
          
                          // Set the border width
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: width * 0.49,

                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0,),
                              child: TextFormField(
                               maxLines: 3,


                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:EdgeInsets.only(bottom: 8),


                                  hintStyle: TextStyle(
                                      color: Colors.white,

                                      fontSize: height * 0.014,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                  hintText: 'Enter your promo code',

                                ),
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   width: width * 0.152,
                          // ),
                          Container(
                            height: height * 0.059,
                            width: width * 0.23,
                            decoration: BoxDecoration(
                              color: Colors.lightGreenAccent,
                              borderRadius: BorderRadius.circular(6),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Apply",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.019,
                                    fontWeight: FontWeight.w500,
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
              SizedBox(
                height: height * 0.052,
              ),
              SizedBox(
                height: height*0.29,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      height: height*0.55,
                      width: width,
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),   // Top left corner radius
                          topRight: Radius.circular(40.0),  // Top right corner radius
                        ),
                      ),
                      child:Padding(
                        padding: const EdgeInsets.only(bottom: 114.0),
                        child: Row(
          
                          children: [
                            SizedBox(
                              width: width * 0.08,
                            ),
                            Text(
                              "Payment:",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: height * 0.023,
                                  fontWeight: FontWeight.w700,
                                  height: 0),
                            ),
                            SizedBox(
                              width: width * 0.16,
                            ),
                            Container(
                              height: height*0.065,
                              width: width*0.125,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child:Icon(
                                Icons.hdr_strong,
                                size: 40.0,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Container(
                              height: height*0.065,
                              width: width*0.125,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child:Icon(
                                Icons.local_parking,
                                size: 34.0,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: width * 0.04,
                            ),
                            Container(
                              height: height*0.065,
                              width: width*0.125,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(9),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child:Icon(
                                Icons.apple_outlined,
                                size: 37.0,
                                color: Colors.black,
                              ),
                            ),
          
                          ],
                        ),
                      )
                    ),
                    Positioned(
                        top: height * 0.143,
                        child:   Container(
                          height: height*0.23,
                          width: width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),   // Top left corner radius
                              topRight: Radius.circular(40.0),  // Top right corner radius
                            ),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(bottom: 70.0),
                            child: Row(
          
                              children: [
                                SizedBox(
                                  width: width * 0.08,
                                ),
                                Text(
                                  "Total:",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: height * 0.023,
                                      fontWeight: FontWeight.w400,
                                      height: 0),
                                ),
                                Text(
                                  " 17,30\$",
          
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: height * 0.028,
                                      fontWeight: FontWeight.w700,
                                      height: 0),
                                ),
                                SizedBox(
                                  width: width * 0.20,
                                ),
                                Container(
                                  height: height*0.059,
                                  width: width*0.32,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        spreadRadius: 3,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.only(top: 11.0),
                                    child: Text(
                                      "Checkout",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: height * 0.023,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),),
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
