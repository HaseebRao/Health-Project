import 'package:flutter/material.dart';
class pageeight extends StatelessWidget {
  const pageeight({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade100,
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bi.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0,left: 18,right: 18),
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 3.0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 25.0,
                  color: Colors.black,
                ),
                SizedBox(width: width*0.26,),
                Text(
                  "Favorite",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.038,
                      fontWeight: FontWeight.w600,
                      height: 0),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.035,),
          SizedBox(width: width,
          child: Text(
            "Lorem Ipsum is simply dummy text of the printing and type setting industry.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: height * 0.0175,
                fontWeight: FontWeight.w500,
                height: 1.3),
          ),),

          SizedBox(height: height*0.001,),

          SizedBox(height: height*0.035,) ,
          Padding(
            padding: const EdgeInsets.only(right: 22.0,top:6,left: 22),
            child: SizedBox(
              width: width,
              height: height * 0.734,

              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing:21,
                    crossAxisCount: 2,
                    crossAxisSpacing: 33,
                    childAspectRatio: 0.73),
                itemCount :12,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: height*0.32,
                    width: width,


                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(alignment:Alignment.bottomCenter,
                          child: Container(
                            height: height*0.29,
                            width: width,
                            decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.30),

                              borderRadius: BorderRadius.circular(9.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  spreadRadius: 0,
                                  blurRadius: 5,
blurStyle: BlurStyle.outer,
                                  offset: Offset(4, 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(bottom: height*0.060,
                          child: Container(
                            width: width * 0.21,
                            height: height * 0.2,
                            decoration: BoxDecoration(
                              // Container background color
                              borderRadius: BorderRadius.circular(22.0),



                              // Border radius
                              image: DecorationImage(
                                image: AssetImage('assets/images/book2.jpg'),
                                fit: BoxFit.cover,
                              ),

                            ),
                          ),

                        ),

                        Positioned(
                          top: height*0.175,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0,left: 13),
                            child: Column(
                              crossAxisAlignment:CrossAxisAlignment.start ,
                              children: [
                                Text(
                                  'Then she was gone',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.014,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                                SizedBox(height: height*0.001,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 24.0,top:3),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.pin_end,
                                        size: 8.0,
                                        color: Colors.black,
                                      ),
                                      SizedBox(width: width*0.01,),
                                      Text(
                                        'Willian Ming',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: height * 0.010,
                                            fontWeight: FontWeight.w300,
                                            height: 0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: height*0.225,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.star_border_purple500_outlined,
                                size: 12.0,
                                color: Colors.red,
                              ),
                              SizedBox(width: width*0.01,),
                              Text(
                                "4.5",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.010,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                              SizedBox(width: width*0.13,),
                              Text(
                                "30",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.010,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                              SizedBox(width: width*0.01,),
                              Text(
                                "mints",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.011,
                                    fontWeight: FontWeight.w300,
                                    height: 0),
                              ),

                            ],
                          ),
                        ),
                        Positioned(top: height*0.005,left: height*0.149,
                          child: Container(
                            height: height*0.025,
                            width: width*0.055,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.27),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  blurStyle: BlurStyle.outer,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            child:Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: Icon(
                                Icons.favorite,
                                size: 13.0,
                                color: Colors.red,
                              ),
                            ),

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
      ),
    );
  }
}
