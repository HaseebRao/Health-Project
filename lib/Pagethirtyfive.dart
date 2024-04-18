import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Pagethirtyfive extends StatelessWidget {
  Pagethirtyfive({super.key});
  List<String> text = [
    'Cycling',
    "Treadmill",
    'Yoga',
    'Push Up',
    'Chin up',
    'Exercise',
  ];
  List<String> image = [
    "assets/images/cycle.jpg",
    "assets/images/exerciseee.jpg",
    "assets/images/yoga.jpg",
    "assets/images/exercise.jpg",
    "assets/images/exercisee.jpg",
    "assets/images/exerciseee.jpg",
  ];
  List<Color> mycolor=[
    Colors.lightBlue.withOpacity(0.1),
    Colors.yellowAccent.withOpacity(0.15),
    Colors.red.withOpacity(0.1),
    Colors.greenAccent.withOpacity(0.15),
    Colors.lightGreenAccent.withOpacity(0.25),
    Colors.teal.withOpacity(0.25),
  ];
  List<modal> datafatch =[
    modal (image: "assets/images/cycle.jpg",text: "Daily Maditation", title: "30 minuts a day",color: Colors.orange, value: "75%"),
    modal(image: "assets/images/exerciseee.jpg",text: "Walking Steps", title: "2000 steps a day",color: Colors.lightBlue,value: "90%"),
    modal(image:   "assets/images/yoga.jpg",text: "Physical Exercise", title: "45 day a day",color: Colors.blueAccent,value: "65%"),
    modal(image:  "assets/images/exercise.jpg",text: "Health Fitness", title: "30 minuts a day",color: Colors.red,value: "85%"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery . of(context).size;
    double height= size. height;
    double width = size. width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left: width*0.04,top: height*0.02,right: width*0.04,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // Container background color
                      borderRadius: BorderRadius.circular(49.0),
                      // Border radius
                      image: DecorationImage(
                        image: AssetImage('assets/images/cartoon.jpg'),
                        // Asset image path
                        fit: BoxFit.fill,
                        // Image fit property

                      ),
                    ),
                  ),
                  SizedBox(width: width*0.04,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.waving_hand,
                            size: 18,
                            color: Colors.orange,
                          ),
                          Text(
                            'Hello,shariful',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: height * 0.017,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(width: width*0.02,),
                        ],
                      ),
                      SizedBox(height: height*0.003,),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.022,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(width: width*0.34,),
                  SizedBox(width: width*0.063,
                  height: height*0.05,
                  child: Stack(
                    children: [
                    Icon(
                          Icons.add_alert_outlined,
                          size: 30.0,
                          color: Colors.black,
                        ),
                    Positioned(left: width*0.049,top: height*0.01,
                      child: Container(
                            height: height*0.0075,
                            width: width*0.014,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                    ),
                    ],
                  ),),
                ],
              ),

              SizedBox(height: height*0.29,
              width: width*0.91,
                child: Stack(
                  children: [

                    Padding(
                      padding: EdgeInsets.only(top: height*0.1),
                      child: Container(
                        height: height*0.19,
                        width: width*0.91,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: Colors.indigo.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(left: width*0.42,top: height*0.03),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Build Your",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.023,
                                    fontWeight: FontWeight.w700,
                                    height: 0),
                              ),
                              SizedBox(height: height*0.001,),
                              Text(
                                "Best Body With Us",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.023,
                                    fontWeight: FontWeight.w700,
                                    height: 0),
                              ),
                              SizedBox(height: height*0.025,),
                              Container(
                                height: height*0.048,
                                width: width*0.3,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: width*0.03,),
                                    Icon(
                                      Icons.videocam_outlined,
                                      size: 23,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                    SizedBox(width: width*0.025,),
                                   Container(
                                     height: height*0.03,
                                     width: width*0.0012,
                                     color: Colors.white,
                                   ),
                                    SizedBox(width: width*0.025,),
                                    Text(
                                      "Just Now",
                                      style: TextStyle(
                                          color: Colors.white.withOpacity(0.8),
                                          fontSize: height * 0.013,
                                          fontWeight: FontWeight.w400,
                                          height: 0),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(top: height*0.035,
                      child: Container(
                        width: width * 0.4,
                        height: height *0.255,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(49.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/gymm.jpg'),
                            // Asset image path
                            fit: BoxFit.fill,
                            // Image fit property
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.047),
              Text(
                "Category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.024,
                    fontWeight: FontWeight.w700,
                    height: 0),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: SizedBox(
                  height: height * 0.1,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 31),
                              child: Container(
                                height: height * 0.075,
                                width: width * 0.15,
                                decoration: BoxDecoration(
                              color:mycolor[index],
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.blue.withOpacity(0.07),
                                  //     spreadRadius: 5,
                                  //     blurRadius: 7,
                                  //     offset: Offset(0, 3), // changes position of shadow
                                  //   ),
                                  // ],
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: height * 0.06,
                                    width: width * 0.125,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(image[index]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 28.0,top: 5),
                                child: Text(
                                  text[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: height * 0.014,
                                      fontWeight: FontWeight.w600,
                                      height: 0),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              SizedBox(height: height*0.04,),
              Text(
                "Today Activity",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.022,
                    fontWeight: FontWeight.w600,
                    height: 0),
              ),
              SizedBox(
                height: height * 0.3,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                         Padding(
                           padding:  EdgeInsets.only(bottom: height*0.015),
                           child: Container(
                             height: height*0.098,
                           width: width*0.9,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black.withOpacity(0.03),
                                 spreadRadius: 5,
                                 blurRadius: 7,
                                 offset: Offset(0, 3), // changes position of shadow
                               ),
                             ],
                             borderRadius: BorderRadius.circular(12),
                           ),
                           child:  ListTile(
                             leading: Container(
                               height: height * 0.095,
                               width: width * 0.17,
                               decoration: BoxDecoration(

                                 image: DecorationImage(
                                   image: AssetImage(image[index]),
                                   fit: BoxFit.scaleDown,
                                 ),
                                 borderRadius: BorderRadius.circular(12),
                                 color:mycolor[index],
                               ),
                             ),
                             title: Text(datafatch[index].text,style: TextStyle(
                                 color: Colors.black,
                                 fontSize: height * 0.022,
                                 fontWeight: FontWeight.w600,
                                 height: 0),),
                             subtitle: Text(datafatch[index].title,style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: height * 0.016,
                      fontWeight: FontWeight.w500,
                      height: 0),),
                             trailing:  Icon(
                               Icons.account_balance,
                               size: 35,
                               color: Colors.red.withOpacity(0.8),
                             ),
                           ),
                         )
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
class modal{
  String image;
  String text;
  String title;
  Color color;
  String? value;
  modal({
    required this.image, required this.text, required this.title, required this. color, this .value,
});
}