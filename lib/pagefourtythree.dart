import 'package:flutter/material.dart';
class pagefourtythree extends StatefulWidget {
  const pagefourtythree({super.key});
  @override
  State<pagefourtythree> createState() => _pagefourtythreeState();
}
class _pagefourtythreeState extends State<pagefourtythree> {
int _list=-1;
  List<String> text = [
    'ChickebBB',
    "Mixberger",
    'Saladbergr',
    'Beefbergr',
    'Vegitable',
    'Eggberger',
  ];
  List<String>data=[
    "Ordenar ohara",
    "\$12.58",
  ];
  List<String> image = [
    "assets/images/bergar.jpg",
    "assets/images/beergr.jpg",
    "assets/images/alu.jpg",
    "assets/images/sawad.jpg",
    "assets/images/bes.jpg",
    "assets/images/alu.jpg",
  ];
  List<Color> mycolor=[
    Colors.lightBlue.withOpacity(0.1),
    Colors.yellowAccent.withOpacity(0.15),
    Colors.red.withOpacity(0.1),
    Colors.greenAccent.withOpacity(0.15),
    Colors.lightGreenAccent.withOpacity(0.25),
    Colors.teal.withOpacity(0.25),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
              Container(
              height: height*0.5,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.red.shade900,
                    Colors.black,// Add red color at the top with some opacity
                    Colors.grey, // More black color
                    Colors.orange, // More black color
                    Colors.green,// More black color
                  ],
                ),
                borderRadius: BorderRadius.only(

                  bottomRight: Radius.circular(55.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/bses.jpg'),
                  fit: BoxFit.contain
                ),
              ),
                child: Padding(
                  padding:  EdgeInsets.only(top: height*0.08,left: width*0.08),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color:Colors.white,
                            size: 25,
                          ),
                          SizedBox(width: width*0.15,),
                          Text(
                            "Hamburguesa especial",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.0192,
                                fontWeight: FontWeight.w800,
                                height: 0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
                Positioned(top: height*0.5,
                  child: Container(
                    height: height*0.2,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.green,
                          Colors.green,// Add red color at the top with some opacity
                          Colors.green, // More black color
                          Colors.green, // More black color
                          Colors.green,// More black color
                        ],
                      ),
                      borderRadius: BorderRadius.only(

                        bottomRight: Radius.circular(30.0),
                      ),

                    ),
                  ),
                ),
                Positioned(top: height*0.5,
                  child: Container(
                    height: height*0.6,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(

                       topLeft: Radius.circular(80.0),
                      ),
                    ),
                    child:Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top: height*0.065,left: width*0.097),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Description",
                                style: TextStyle(
                                    color: Colors.blueAccent.shade700,
                                    fontSize: height * 0.020,
                                    fontWeight: FontWeight.w700,
                                    height: 0),
                              ),
                              SizedBox(
                                height: height*0.016,
                              ),
                              SizedBox(
                                height: height*0.085,
                                width: width*0.8,
                                child:Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type  ",
                                  style: TextStyle(
                                      color: Colors.blueAccent.withOpacity(0.4),
                                      fontSize: height * 0.0111,
                                      fontWeight: FontWeight.w500,
                                      height: height*0.002),
                                ),
                              ),

                              Row(
                                children: [
                                  Text(
                                    "Ingridientes",
                                    style: TextStyle(
                                        color: Colors.blueAccent.shade700,
                                        fontSize: height * 0.020,
                                        fontWeight: FontWeight.w700,
                                        height: 0),
                                  ),
                                  SizedBox(width: width*0.405,),
                                  Text(
                                    "10 ingridientses",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        fontSize: height * 0.011,
                                        fontWeight: FontWeight.w400,
                                        height: 0),
                                  ),
                                ],
                              ),
                              SizedBox(height: height*0.016,),
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: SizedBox(
                                  height: height * 0.18,
                                  width: width,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 6,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 12),
                                              child: Container(
                                                height: height * 0.13,
                                                width: width * 0.24,
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
                                                child: Container(
                                                  height: height * 0.05,
                                                  width: width * 0.11,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(17.0),
                                                    image: DecorationImage(
                                                      image: AssetImage(image[index]),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: height*0.004,),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.only(right: 28.0,top: 5),
                                                child: Text(
                                                  text[index],
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black.withOpacity(0.3),
                                                      fontSize: height * 0.011,
                                                      fontWeight: FontWeight.w400,
                                                      height: 0),
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
                        Padding(
                          padding:  EdgeInsets.only(left: width*0.052,top: height*0.01),
                          child: Row(
                            children: [
                              Container(
                                height: height*0.07,
                                width: width*0.5,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.indigo,
                                      Colors.blueAccent,// Add red color at the top with some opacity
                                      Colors.deepPurpleAccent, // More black color
                                      Colors.deepPurpleAccent, // More black color
                                      Colors.indigo,// More black color
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child:  Center(
                                  child: Text(
                                    "Ordanar Ohara",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.020,
                                        fontWeight: FontWeight.w500,
                                        height: 0),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.1,),
                              Text(
                                "\$12.58",
                                style: TextStyle(
                                    color: Colors.blueAccent.shade700,
                                    fontSize: height * 0.031,
                                    fontWeight: FontWeight.w700,
                                    height: 0),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(top: height*0.465,left: width*0.78,
                  child: Container(
                    height: height*0.055,
                    width: width*0.115,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child:Icon(
                      Icons.favorite_outline,
                      size:27.0,
                      color:Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}







