import 'package:flutter/material.dart';
class  Pagefifteen extends StatelessWidget {
  Pagefifteen ({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
      body:  Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/backpic.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,left: 21,right: 21),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size:30.0,
                    color: Colors.white,
                  ),
                  SizedBox(width: width*0.23,),
                  Text(
                    "Sleep Stories",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.028,
                        fontWeight: FontWeight.w400,
                        height: 0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: SizedBox(
                  width: width*0.73,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Smothing bedtime stories to help you fall into a deep and nature sleep.",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.018,
                        fontWeight: FontWeight.w300,
                        height: height*0.0015),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: height * 0.055,
                  width: width*0.89,
                  decoration: BoxDecoration(
                    color: Color(0xff404040),
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: TextField(
                    obscuringCharacter: "*",
      
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search.....',
                      hintStyle: TextStyle(color: Color(0xffFFFFFF)),
                      prefixIcon: Icon(Icons.search,color: Color(0xffFFFFFF),),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.032, ),
              Row(
                children: [
                  Text(
                    "Recommendation for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.021,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                ],
              ),
              SizedBox(height: height*0.024, ),
              Container(
                height: height*0.213,
                width: width*0.83,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/star.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child:  Padding(
                  padding: const EdgeInsets.only(top: 112.0,left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Serenade of the",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      Text(
                        "Stars",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.more_horiz,
                size:45.0,
                color: Colors.white,
              ),
              SizedBox(height: height*0.001, ),
              Row(
                children: [
                  Text(
                    "Favorite",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.020,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                ],
              ),
              SizedBox(height: height*0.0049,),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(height: height*0.13,width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
      
                      itemCount: 5,
                      itemBuilder: (context, index){
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 14.0),
                              child: Container(
                                width: width * 0.275,
                                height: height * 0.129,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  // Container background color
                                  borderRadius: BorderRadius.circular(9.0),
                                  // Border radius
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/sea.jpg'),
                                    // Asset image path
                                    fit: BoxFit.fitHeight,
                                    // Image fit property
                                  ),
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.only(top: 69),
                                  child:  Container(
                                    height: height*0.029,
                                    width: width*0.053,
                                    decoration: BoxDecoration(
                                      color: Colors.black45.withOpacity(0.6),
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 7.0),
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        "The Enchanted\nForest Slambers",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: height * 0.012,
                                            fontWeight: FontWeight.w400,
                                            height: 0),
                                      ),
                                    ),
      
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      }
                  ),
                ),
              ),
              SizedBox(height: height*0.033, ),
              Row(
                children: [
                  Text(
                    "Bed Time Stores",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.021,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                ],
              ),
              Column(
                children: List.generate(
                  3,
                      (index) =>  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Container(
                      width: width,
                      height: height * 0.145,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                        ),
                        // Container background color
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 19.0),
                            child: Container(
                              width: width * 0.24,
                              height: height * 0.1025,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                // Container background color

                                borderRadius: BorderRadius.circular(9.0),
                                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/sea.jpg'),
                                  // Asset image path
                                  fit: BoxFit.fitHeight,
                                  // Image fit property

                                ),
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,left: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Campfire",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.017,
                                      fontWeight: FontWeight.w600,
                                      height: 0),
                                ),
                                SizedBox(
                                  height: height*0.095,
                                  width: width*0.48,

                                  child: Text(
                                    "The Forest is Dark; The Movement you think that you're lost in the woods. Then you are, Do not Lose you way. DO not lose your way. Then Monster are lurking  Not far for the path Should you Stray.",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.011,
                                        fontWeight: FontWeight.w300,
                                        height: 0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 68.0,right: 7),
                            child: Icon(
                              Icons.favorite_outline,
                              size:30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      ),
      ),
    );
  }
}
