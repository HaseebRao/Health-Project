import 'package:flutter/material.dart';

class pagetwo extends StatelessWidget {
   pagetwo({super.key});
List<String> text=[
  "1-7 days",
  "1-10 days",
  "1-14 days",
  "1-15 days",
  "31-38 days",
  "39-45 days",
  "1-7 days",
  "8-15 days",
  "16-22 days",
  "23-30 days",
  "31-38 days",
  "39-45 days",
  "1-7 days",
  "8-15 days",
  "16-22 days",
  "23-30 days",

  "39-45 days",
];
List<String> images=[
  "assets/images/pne.jpg",
  "assets/images/yuga.jpg",
  "assets/images/hand.jpg",

];
   List<String> info=[
     "10 day Information",
     "Your sleep Solution",
     "Your anxiety relife",
   ];
   List<IconData> iconList = [
     Icons.favorite,
     Icons.favorite_outline,
     Icons.favorite_outline,
   ];

   @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Container(
                height: height * 0.4,
                width: width,
                decoration: BoxDecoration(
                  color: Colors
                      .indigo, // Replace with your desired background color
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 18.0, right: 4, bottom: 125),
                  child: Row(
                    children: [
                      SizedBox(width: width*0.034),
                      Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18.0,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: width * 0.23,
                      ),
                      Text(
                        'Courses',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.035,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                      SizedBox(
                        width: width * 0.10,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.040,
                        width: width * 0.21,
                        decoration: BoxDecoration(
                          color: Colors .indigo.shade900,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5),
                          ),
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 1.0,
                            // Border width
                          ),
                        ),
                        child: Text(
                          'Filter',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.015,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: height * 0.19,
                left: width * 0.04,
                right: width * 0.04,
                child: Column(
                  children: [
                    Container(
                      height: height * 0.83,
                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                              15.0), // adjust the radius as needed
                          topRight: Radius.circular(
                              15.0), // adjust the radius as needed
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes the shadow position
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                        ),
                        child: Column(
                          children: [
                            Text(
                              '250 Courses',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.028,
                                  fontWeight: FontWeight.w800,
                                  height: 0),
                            ),SizedBox(height: height*0.001,),
                            Text(
                              'Lorem ipsum is simply dummy text of',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.w300,
                                  height: 0),
                            ),
                            // left: width*0.052
                            Text(
                              'the printing',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.w300,
                                  height: 0),
                            ),
                            SizedBox(
                              height: height * 0.025,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Browse by days',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.020,
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ],
                              ),
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(
                                  height: height * 0.012,
                                ),
                                SizedBox(
                                  width: width,
                                  height: height * 0.05,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: text.length,
                                    itemBuilder: (context, index) {
                                      return Row(
                                        children: [
                                        Padding(
                                          padding:  EdgeInsets.only(right: width*0.03),
                                          child: Container(
                                          alignment: Alignment.center,
                                          width: width * 0.26,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                            const BorderRadius.all(
                                              Radius.circular(8),
                                            ),
                                            // boxShadow: [
                                            //   BoxShadow(
                                            //     color: Colors.grey.withOpacity(0.3),
                                            //     blurRadius: 3,
                                            //     offset: Offset(0, 3), // changes the shadow position
                                            //   ),
                                            // ],
                                            border: Border.all(
                                              color: Colors
                                                  .black45, // Border color
                                              width: 1.0,
                                              // Border width
                                            ),
                                          ),
                                          child: Text(
                                            text[index],
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.016,
                                                fontWeight: FontWeight.w400,
                                                height: 0),
                                          ),

                                                                                  ),
                                        ),



                                        ],
                                      );
                                    },
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.016,
                                ),

                                Container(

                                  width: width,height: height*0.55,
                                  child:ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: images.length,

                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:  EdgeInsets.only(bottom: height*0.033,left: width*0.050),
                                        child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(alignment: Alignment.topRight,
                                              width: width * 0.82,
                                              height: height * 0.24,
                                              decoration: BoxDecoration(
                                                color: Colors.orange,
                                                // Container background color
                                                // border: Border.all(
                                                //   color: Colors.black, // Border color
                                                //   width: 1.0, // Border width
                                                // ),
                                                borderRadius: BorderRadius.circular(14.0),
                                                // Border radius
                                                image: DecorationImage(
                                                  image: AssetImage(images[index]),
                                                  // Asset image path
                                                  fit: BoxFit.fill,
                                                  // Image fit property
                                                // Blend mode for color application

                                                ),
                                              ),

                                              child: Padding(
                                                padding: EdgeInsets.only(top: 14.0,right: width*0.03),
                                                child: Icon(
                                                  iconList[index],
                                                  size: 25.0,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: height*0.02,),
                                            Text(
                                              '10 days course . Meditation',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.017,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0),
                                            ),
                                            SizedBox(height: height*0.005,),
                                            Row(
                                              children: [
                                                Text(
                                                  info[index],
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: height * 0.024,
                                                      fontWeight: FontWeight.w600,
                                                      height: 0),
                                                ),
                                                SizedBox(width: width*0.27,),
                                                Icon(
                                                  Icons.share_sharp,
                                                  size: 27.0,
                                                  color: Colors.black,
                                                ),


                                              ],
                                            ),
                                            SizedBox(height: height*0.003,),
                                            Text(
                                              'Lorem ipsum is simply dummy text of',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.014,
                                                  fontWeight: FontWeight.w300,
                                                  height: 0),
                                            ),
                                            Text(
                                              'the printing',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.014,
                                                  fontWeight: FontWeight.w300,
                                                  height: 0),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
