import 'package:flutter/material.dart';

class pagesix extends StatelessWidget {
  pagesix({super.key});
  List<String> images = [
    "assets/images/burger.jpg",
    "assets/images/leg.jpg",
    "assets/images/pizza.jpg",
    "assets/images/plate.jpg",
    "assets/images/soop.jpg",
    "assets/images/cup.jpg",
  ];
  List<String> image = [
    "assets/images/burger.jpg",
    "assets/images/ege.jpg",
    "assets/images/pizza.jpg",
    "assets/images/plate.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white10.withOpacity(0.8),
        body: Padding(
          padding: EdgeInsets.only(top: height * 0.017, left: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Hi Zesan',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.030,
                        fontWeight: FontWeight.w400,
                        height: 0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.52),
                    child: Container(
                      width: width * 0.12,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        // Container background color
                        borderRadius: BorderRadius.circular(49.0),
                        // Border radius
                        image: DecorationImage(
                          image: AssetImage('assets/images/eye.jpg'),
                          // Asset image path
                          fit: BoxFit.cover,
                          // Image fit property
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Text(
                  'What do you want',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.032,
                      fontWeight: FontWeight.w500,
                      height: 0),
                ),
              ),
              Row(
                children: [
                  Text(
                    'for dinner',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.032,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Container(
                    width: width * 0.06,
                    height: height * 0.03,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/plate.jpg'),
                        // Asset image path
                        fit: BoxFit.fill,
                        // Image fit property
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: SizedBox(
                  height: height * 0.08,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 14),
                              child: Container(
                                height: height * 0.058,
                                width: width * 0.229,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(28.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 29.0, right: 29, top: 14, bottom: 10),
                                  child: Container(
                                    width: width * 0.06,
                                    height: height * 0.03,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      image: DecorationImage(
                                        image: AssetImage(images[index]),
                                        // Asset image path
                                        fit: BoxFit.fill,
                                        // Image fit property
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26.0,),
                child: Row(
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.030,
                          fontWeight: FontWeight.w400,
                          height: 0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 13.0,top: 6),
                child: SizedBox(
                  width: width,
                  height: height * 0.59,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 12,
                        crossAxisCount: 2,
                        crossAxisSpacing: 44,
                        childAspectRatio: 0.72),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return  SizedBox(
                        height: height*0.3,
                        width: width,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Align(alignment:Alignment.bottomCenter,
                              child: Container(
                                height: height*0.245,
                                width: width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.30,
                              height: height * 0.16,
                              decoration: BoxDecoration(
                // Container background color
                                borderRadius: BorderRadius.circular(480.0),
                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/pizza.jpg'),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                            Positioned(
                              top: height*0.175,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15.0,),
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start ,
                                  children: [
                                    Text(
                                      'Korean Bibimbap',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: height * 0.015,
                                          fontWeight: FontWeight.w600,
                                          height: 0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0,top: 7),
                                      child: Text(
                                        'Korean mixed rice',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: height * 0.01,
                                            fontWeight: FontWeight.w300,
                                            height: 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: height*0.245,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$21",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w500,
                                        height: 0),
                                  ),
                                  SizedBox(width: width*0.2,),
                                  Icon(
                                    Icons.favorite_outline,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
        ),
      ),
    ),
    );
  }
}

