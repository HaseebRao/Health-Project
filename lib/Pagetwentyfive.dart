import 'package:flutter/material.dart';
import 'package:health/Pagetwentysix.dart';
class Pagetwentyfive extends StatelessWidget {
  Pagetwentyfive({super.key});
  List<String> text = [
    'Livingg room',
    "Bedroom",
    'Kitchen',
    'Bathroom',
    'hall room',
    'Chair',
  ];
  List<String> image = [
    "assets/images/cara.jpg",
    "assets/images/cara.jpg",
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
              padding: EdgeInsets.only(top:height*0.005,left: width*0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pagetwentysix()),
                          );
                        },
                        child: Text(
                          "Browse cars",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.034,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ),
                      SizedBox(width: width*0.41,),
                      Icon(
                        Icons.list_outlined,
                        size:24.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.015,),
                  Container(
                    height: height * 0.06,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.08),
                      borderRadius: BorderRadius.circular(2.0),
                      // border: Border.all(color: Colors.black45.withOpacity(0.1), width: 2.0), // Add border color and width
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search type, cotegories, location',
                        hintStyle: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.grey,size: 30,),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.062,),
                  Row(
                    children: [
                      Text(
                        "Hot deals",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      SizedBox(width: width*0.53,),
                      Text(
                        "View All",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: height * 0.019,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: SizedBox(
                      height: height * 0.33,
                      width: width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Container(
                                    height: height * 0.33,
                                    width: width * 0.51,
                                    decoration: BoxDecoration(
                                      color: Colors.indigoAccent,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.07),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(left:width*0.045,top:height*0.03),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "Bugatti",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: height * 0.019,
                                                        fontWeight: FontWeight.w500,
                                                        height: 0),
                                                  ),
                                                  SizedBox(height: height*0.004,),
                                                  Text(
                                                    "Chiran",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white.withOpacity(0.8),
                                                        fontSize: height * 0.018,
                                                        fontWeight: FontWeight.w400,
                                                        height: 0),
                                                  ),
                                                ],
                                              ),
                                              SizedBox( width: width*0.19,),
                                              Column(
                                                children: [
                                                  Text(
                                                    "\$500",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: height * 0.016,
                                                        fontWeight: FontWeight.w500,
                                                        height: 0),
                                                  ),
                                                  SizedBox(height: height*0.004,),
                                                  Text(
                                                    "/day",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white.withOpacity(0.8),
                                                        fontSize: height * 0.018,
                                                        fontWeight: FontWeight.w400,
                                                        height: 0),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: height*0.05,
                                          ),
                                          Container(
                                            height: height * 0.08,
                                            width: width * 0.5,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image[index]),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: height*0.070,),
                                          Row(
                                            children: [
                                              Text(
                                                "Details",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white.withOpacity(0.8),
                                                    fontSize: height * 0.016,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0),
                                              ),
                                              SizedBox(width: width*0.05,),
                                              Container(
                                                height: height*0.048,
                                                width: width*0.3,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                   topLeft: Radius.circular(20.0),
                                                    // bottomLeft: Radius.circular(50.0), // Adjust the value to control the roundness
                                                    bottomRight: Radius.circular(20.0), // Adjust the value to control the roundness
                                                  ),
                                                  color: Colors.black.withOpacity(0.5),

                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: width*0.03,),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "Recent now",
                                                        textAlign: TextAlign.center,
                                                        style: TextStyle(
                                                            color: Colors.white.withOpacity(0.8),
                                                            fontSize: height * 0.014,
                                                            fontWeight: FontWeight.w500,
                                                            height: 0),
                                                      ),
                                                      SizedBox(width: width*0.02),
                                                      Icon(
                                                        Icons.arrow_forward,
                                                        size:18.0,
                                                        color: Colors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    // child: Container(
                                    //   height: height * 0.06,
                                    //   width: width * 0.125,
                                    //   decoration: BoxDecoration(
                                    //     image: DecorationImage(
                                    //       image: AssetImage(image[index]),
                                    //       fit: BoxFit.fill,
                                    //     ),
                                    //   ),
                                    // ),
                                  ),
                                ),
                                // Center(
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(right: 28.0,top: 5),
                                //     child: Text(
                                //       text[index],
                                //       textAlign: TextAlign.center,
                                //       style: TextStyle(
                                //           color: Colors.indigo,
                                //           fontSize: height * 0.014,
                                //           fontWeight: FontWeight.w600,
                                //           height: 0),
                                //     ),
                                //   ),
                                // ),
                              ],
                            );
                          }),
                    ),
                  ),

                  SizedBox(height: height*0.08,),
                  Row(
                    children: [
                      Text(
                        "Top delears",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      SizedBox(width: width*0.53,),
                      Text(
                        "View All",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: height * 0.019,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: height * 0.235,
              width: width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 23,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5,top: 13,left: 19),
                          child: Container(
                            height: height * 0.198,
                            width: width * 0.36,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.12),
                                  spreadRadius: 9,
                                  blurRadius: 7,
                                  offset: Offset(0, 8), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(11.0),

                            ),
                              child: Padding(
                                padding:  EdgeInsets.only(left: width*0.03,top: height*0.025),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: height*0.025,
                                      width: width*0.11,
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade700,

                                      ),
                                      child: Center(
                                        child: Text(
                                          "Alamo",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.yellow.shade300,
                                              fontSize: height * 0.014,
                                              fontWeight: FontWeight.w800,
                                              height: 0),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height*0.02,),
                                    Row(
                                      children: [
                                        Container(
                                          height: height*0.012,
                                          width: width*0.022,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(123)
                                          ),
                                        ),
                                        SizedBox(width: width*0.005,),
                                        Container(
                                          height: height*0.012,
                                          width: width*0.022,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(123)
                                          ),
                                        ),
                                        SizedBox(width: width*0.005,),
                                        Container(
                                          height: height*0.012,
                                          width: width*0.022,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(123)
                                          ),
                                        ),
                                        SizedBox(width: width*0.005,),
                                        Container(
                                          height: height*0.012,
                                          width: width*0.022,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(123)
                                          ),
                                        ),
                                        SizedBox(width: width*0.005,),
                                        Container(
                                          height: height*0.012,
                                          width: width*0.022,
                                          decoration: BoxDecoration(
                                              color: Colors.black.withOpacity(0.3),
                                              borderRadius: BorderRadius.circular(123)
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "Alamo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: height * 0.019,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                    SizedBox(height: height*0.01,),
                                    Text(
                                      "120 offers",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.5),
                                          fontSize: height * 0.019,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                  ],
                                ),
                              ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
              height: height*0.055,
              width: width,
decoration: BoxDecoration(
  color: Colors.white,
),
              child: Padding(
                padding: EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.006),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.horizontal_split_outlined,
                          size:24.0,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Text(
                          "Home",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.category_outlined,
                          size:24.0,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Text(
                          "Categories",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.person,
                          size:24.0,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Text(
                          "Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.more_horiz,
                          size:24.0,
                          color: Colors.black.withOpacity(0.3),
                        ),
                        Text(
                          "More",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
