import 'package:flutter/material.dart';
class Pagetwentyseven extends StatelessWidget {
   Pagetwentyseven({super.key});
  List<String> image = [
    "assets/images/gam.jpg",
    "assets/images/gam.jpg",
    "assets/images/carb.jpg",
    "assets/images/kitchen.jpg",
    "assets/images/bathroom.jpg",
    "assets/images/chair.jpg",
    "assets/images/kitchen.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: width*0.06,right: width*0.065,top: height*0.05),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.list_outlined,
                        size:30.0,
                        color: Colors.black,
                      ),
                      SizedBox(width: width*0.5,),
                      Icon(
                        Icons.lock_outline_sharp,
                        size:30.0,
                        color: Colors.black,
                      ),
                      SizedBox(width: width*0.13,),
                      Icon(
                        Icons.search,
                        size:36.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.1),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Concept',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w800,
                                height: 0),
                          ),
                          Container(
                            height: height*0.004,
                            width: width*0.07,
                            decoration: BoxDecoration(
                              color: Colors.green
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: width*0.14,),
                      Text(
                        'Popular',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                      SizedBox(width: width*0.14,),
                      Text(
                        'New',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.3),
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:width*0.78,top:height*0.06,bottom: height*0.02),
                    child: Icon(
                      Icons.earbuds,
                      size:32.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 13.0,),
              child: SizedBox(
                height: height * 0.53,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(right: 35,left: width*0.06),
                            child: Container(
                              height: height * 0.51,
                              width: width * 0.69,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(42.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left:width*0.045,top:height*0.03),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:  EdgeInsets.only(top:height*0.02,left: width*0.04),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Gasteri Kyoryu",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: height * 0.027,
                                                    fontWeight: FontWeight.w400,
                                                    height: 0),
                                              ),
                                              SizedBox(height: height*0.004,),
                                              Text(
                                                "W 300*H310 MM",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black.withOpacity(0.3),
                                                    fontSize: height * 0.014,
                                                    fontWeight: FontWeight.w600,
                                                    height: 0),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   height: height*0.01,
                                    // ),
                                    Container(
                                      height: height * 0.3,
                                      width: width * 0.7,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(image[index]),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height*0.006,),
                                    Row(
                                      children: [
                                        SizedBox(width: width*0.04,),
                                        Row(
                                          children: [
                                            Text(
                                              '\$',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.022,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0),
                                            ),
                                            Text(
                                              '228',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.029,
                                                  fontWeight: FontWeight.w900,
                                                  height: 0),
                                            ),
                                            Text(
                                              '.00',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.019,
                                                  fontWeight: FontWeight.w600,
                                                  height: 0),
                                            ),
                                          ],
                                        ),
                                        SizedBox(width: width*0.222,),
                                        Container(
                                          height: height*0.095,
                                          width: width*0.18,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.0),
                                              // bottomLeft: Radius.circular(50.0), // Adjust the value to control the roundness
                                              bottomRight: Radius.circular(40.0), // Adjust the value to control the roundness
                                            ),
                                            color: Colors.green,
                                          ),
                                          child:  Icon(
                                            Icons.add,
                                            size:18.0,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
