import 'package:flutter/material.dart';
class pageseven extends StatelessWidget {
   pageseven({super.key});
  List<String> text=[
    'Green Power',
    'lime Landse',
    'Home Green',
    'Your Cardes',
    'lime Landse',
  ];
   List<Color> color=[
     Colors.cyanAccent.withOpacity(0.7),
     Colors.tealAccent.withOpacity(0.7),
     Colors.cyanAccent.withOpacity(0.7),
     Colors.deepOrangeAccent.withOpacity(0.9),
     Colors.pinkAccent.withOpacity(0.9),
   ];
   List<Color> colors=[
     Colors.cyan.withOpacity(0.9),
     Colors.teal.withOpacity(0.9),
     Colors.cyan.withOpacity(0.9),
     Colors.orange.withOpacity(0.9),
     Colors.pink.withOpacity(0.9),
   ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 13),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 23.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: width * 0.65,
                  ),
                  Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  Icon(
                    Icons.view_headline_sharp,
                    size: 28.0,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.038,
              ),
              Row(
                children: [
                  Text(
                    "Strelitzia",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.047,
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.39,
                    width: width * 0.96,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 175.0),
                            child: Container(
                              height: height * 0.375,
                              width: width * 0.5,
                              decoration: BoxDecoration(
                                color: Colors.cyanAccent,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30,),
                          child: Container(
                            width: width * 0.62,
                            height: height * 0.50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/pp.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.30,
                          left: width * 0.43,
                          child: Container(
                            height: height * 0.06,
                            width: width * 0.4,
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: width * 0.07,
                                ),
                                Text(
                                  "Learn more",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.017,
                                      fontWeight: FontWeight.w600,
                                      height: 0),
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 18.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height * 0.04,
                          left: width * 0.59,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BLOOMING",
                                style: TextStyle(
                                    color: Colors.black38.withOpacity(0.3),
                                    fontSize: height * 0.019,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              SizedBox(
                                height: height * 0.0065,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.hive_rounded,
                                    size: 23.0,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "3 Years",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.024,
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.025,
                              ),
                              Text(
                                "ENVIRONMENT",
                                style: TextStyle(
                                    color: Colors.black38.withOpacity(0.3),
                                    fontSize: height * 0.018,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              SizedBox(
                                height: height * 0.0065,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.flare,
                                    size: 23.0,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "Full Sun",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.024,
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: height * 0.025,
                              ),
                              Text(
                                "SIZE",
                                style: TextStyle(
                                    color: Colors.black38.withOpacity(0.3),
                                    fontSize: height * 0.017,
                                    fontWeight: FontWeight.w600,
                                    height: 0),
                              ),
                              SizedBox(
                                height: height * 0.0065,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.double_arrow_outlined,
                                    size: 23.0,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Text(
                                    "Avr.80cm",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.024,
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 22.0,left: 7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Strelitzia is a genus of five species of",
                      style: TextStyle(
                          color: Colors.black38.withOpacity(0.4),
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w400,
                          height: 0),
                    ),
                    SizedBox(
                      height: height * 0.004,
                    ),
                    Text(
                      "perennial plants, native to South Africa. It",
                      style: TextStyle(
                          color: Colors.black38.withOpacity(0.4),
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w400,
                          height: 0),
                    ),
                    SizedBox(
                      height: height * 0.004,
                    ),
                    Text(
                      "belongs to the plant family Strelitziaceae.",
                      style: TextStyle(
                          color: Colors.black38.withOpacity(0.4),
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w400,
                          height: 0),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.022,
              ),
              Row(
                children: [
                  Text(
                    "From Same Family",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.033,
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.019,
              ),


              SizedBox(
                height: height * 0.224,
                width: width,

                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0,top: 21),
                            child: Container(
                              width: width * 0.39,
                              height: height * 0.23,
                              decoration: BoxDecoration(
                               color:color[index],
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0,left: 15,),
                            child: Container(
                              width: width * 0.32,
                              height: height * 0.19,
                              decoration: BoxDecoration(

                                  color:color[index],


                                borderRadius: BorderRadius.circular(15.0),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/pp.jpg'),
                                  fit: BoxFit.fill,

                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, 3),
                                  ),
                                ]
                              ),
                            // child: Container(
                            //   height: height*0.02,
                            //   width: width*0.03,
                            //   color: Colors.deepOrangeAccent,
                            // ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:160.0,left: 35),
                            child: Text(
                              text[index],
                              style: TextStyle(
                                  color:colors[index],
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w500,
                                  height: 0),
                            ),
                          ),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
