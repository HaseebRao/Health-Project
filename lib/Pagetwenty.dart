import 'package:flutter/material.dart';
import 'package:health/Pagetwentyone.dart';
import 'package:health/Pagetwentytwo.dart';
class Pagetwenty extends StatefulWidget {
 Pagetwenty({super.key});
  @override
  State<Pagetwenty> createState() => _PagetwentyState();
}
class _PagetwentyState extends State<Pagetwenty> {

  List<String> image = [
    "assets/images/bathroom.jpg",
    "assets/images/bedroom.jpg",
    "assets/images/kitchen.jpg",
    "assets/images/bathroom.jpg",
    "assets/images/chair.jpg",
    "assets/images/kitchen.jpg",
  ];

 List<String> images = [
   "assets/images/image1.jpg",
   "assets/images/image2.jpg",
   "assets/images/image1.jpg",
   "assets/images/image2.jpg",
 ];

  List<String> text = [
    'Livingg room',
    "Bedroom",
    'Kitchen',
    'Bathroom',
    'hall room',
    'Chair',
  ];

  List<Color> colors = [
    Colors.white,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
  ];

 var slectedIndex=-1;
 List<bool> switchValue=List.generate(10, (index) => false);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left:width*0.05,right:width*0.02,top: height*0.015),
          child: Column(
            children: [
                Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: height * 0.027,
                      fontWeight: FontWeight.w500,
                      height: 0),
                ),
                Text(
                  "Home, Alex",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: height * 0.028,
                      fontWeight: FontWeight.w500,
                      height: 0),
                ),

              ],
            ),
            SizedBox(width: width*0.44,),
            Container(
              width: width * 0.12,
              height: height * 0.06,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(49.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/doll.jpg'),
                  // Asset image path
                  fit: BoxFit.fill,
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.only(left: 33.0,bottom:43,right: 10,top: 1),
                child: Container(
                  height: height*0.001,
                  width: width*0.001,
                  decoration: BoxDecoration(
                    color:Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

            ),
          ],
                ),
              SizedBox(height: height*0.04,),
              Row(
                children: [
                 GestureDetector(
                   onTap: (){
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => Pagetwentyone()),
                     );
                   },
                    child: Text(
                      "Rooms",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: height * 0.019,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
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
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.blue.withOpacity(0.07),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
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
              SizedBox(height: height*0.045,),
              Row(
                children: [
                  Text(
                    "Smart systems",
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: height * 0.021,
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(right: width*0.02),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,top: 3),
                      child: SizedBox(
                        width: width,
                        height: height * 0.51,
                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 0,
                              crossAxisCount: 2,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.81),
                          itemCount: 4,
                          itemBuilder: (BuildContext context,int index) {
                            return  SizedBox(
                                height: height*0.3,
                                width: width,
                                child:GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      slectedIndex=index;
                                      print(slectedIndex);
                                    });
                                  },
                                  child: Stack(
                                    children: [
                                      Positioned(top:height*0.021,
                                        child: Container(
                                          height: height*0.22,
                                          width: width*0.42,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withOpacity(0.1),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0, 3),
                                              ),
                                            ],
                                            color:slectedIndex==index?Colors.black: Colors.white,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:12.0,left: 19,right: 15),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(height: height*0.11,),
                                                Text(
                                                  text[index],
                                                  style: TextStyle(
                                                      color:slectedIndex==index?Colors.white:Colors.black.withOpacity(0.4),
                                                      fontSize: height * 0.02,
                                                      fontWeight: FontWeight.w700,
                                                      height: 0),
                                                ),
                                                SizedBox(height: height*0.009,),
                                                Text(
                                                  text[index],
                                                  style: TextStyle(
                                                      color:slectedIndex==index?Colors.white:Colors.black.withOpacity(0.4),
                                                      fontSize: height * 0.017,
                                                      fontWeight: FontWeight.w400,
                                                      height: 0),
                                                ),
                                                SizedBox(height: height*0.028,),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(bottom: height*0.152,left: width*0.023,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: width * 0.22,
                                              height: height * 0.115,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(1.0),
                                                image: DecorationImage(
                                                  image: AssetImage(images[index]),
                                                  // Asset image path
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 13),
                                            Switch(
                                              value:switchValue[index],
                                              onChanged: (newValue) {
                                                setState(() {
                                                  switchValue[index]= newValue;
                                                },);
                                              },
                                              activeColor:slectedIndex==index ? Colors.white : Colors.black, // Set active color based on state
                                              inactiveThumbColor: slectedIndex==index ? Colors.green.withOpacity(0.5) : Colors.black.withOpacity(0.3), // Set inactive color based on state
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(right:width*0.04,top:height*0.015),
                child: Container(
                  height: height*0.075,
                  width: width*0.87,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(19)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width*0.08,),
                      Icon(
                        Icons.home_filled,
                        size:28.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: width*0.01,),
                      Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.012,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      SizedBox(width: width*0.2,),
                      Icon(
                        Icons.person_add_disabled_sharp,
                        size:26.0,
                        color: Colors.white.withOpacity(0.6),
                      ),
                      SizedBox(width: width*0.22,),
                      Icon(
                        Icons.settings,
                        size:28.0,
                        color: Colors.white.withOpacity(0.6),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
