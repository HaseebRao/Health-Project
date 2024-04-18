import 'package:flutter/material.dart';
class Pagenineteen extends StatefulWidget {
   Pagenineteen({super.key});
  @override
  State<Pagenineteen> createState() => _PagenineteenState();
}
class _PagenineteenState extends State<Pagenineteen> {
  List<String> text = [
    'lighting',
    "Smart TV",
    'Air Cular',
    'HK Studio',
  ];
   List<String> texts = [
     '4 lamps',
     "2 devices",
     '1 device',
     '2 devices',
   ];
   List<String> textes = [
     'On',
     "Off",
     'On',
     "Off",
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
          padding: const EdgeInsets.only(left: 15, right: 12, top:9),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height*0.055,
                    width: width*0.12,
                    decoration: BoxDecoration(
                      color: Colors. white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pink.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.035,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello David",
                        style: TextStyle(
                          // color: Color(0xff8B5F9C),
                            color: Colors.black,
                            fontSize: height * 0.027,
                            fontWeight: FontWeight.w900,
                            height: 0),
                      ),
                      Text(
                        "Thursday, 21 july 2022",
                        style: TextStyle(
                          // color: Color(0xff8B5F9C),
                            color: Colors.black,
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w400,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(width: width*0.27,),
                  Icon(
                    Icons.settings,
                    size:31.0,
                    color: Colors.black,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  height: height*0.2,
                  width: width*0.92,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 32.0,top: 23),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(

                              "21 july 2022",
                              style: TextStyle(
                                // color: Color(0xff8B5F9C),
                                  color: Colors.white,
                                  fontSize: height * 0.017,
                                  fontWeight: FontWeight.w400,
                                  height: 0),
                            ),
                            SizedBox(height: height*0.004,),
                            Text(

                              "Energy Usage",
                              style: TextStyle(
                                // color: Color(0xff8B5F9C),
                                  color: Colors.white,
                                  fontSize: height * 0.021,
                                  fontWeight: FontWeight.w600,
                                  height: 0),
                            ),
                            SizedBox(height: height*0.001,),
                            Row(
                              children: [
                                Text(

                                  "145.8",
                                  style: TextStyle(
                                    // color: Color(0xff8B5F9C),
                                      color: Colors.greenAccent,
                                      fontSize: height * 0.052,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                                SizedBox(width: width*0.015,),
                                Text(

                                  "kw/h",
                                  style: TextStyle(
                                    // color: Color(0xff8B5F9C),
                                      color: Colors.white,
                                      fontSize: height * 0.018,
                                      fontWeight: FontWeight.w400,
                                      height: 0),
                                ),
                              ],
                            ),
                            Text(

                              "15% less than yesterday",
                              style: TextStyle(
                                // color: Color(0xff8B5F9C),
                                  color: Colors.white,
                                  fontSize: height * 0.0155,
                                  fontWeight: FontWeight.w400,
                                  height: 0),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 37.0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.temple_buddhist_outlined,
                                size:65.0,
                                color: Colors.white,
                              ),
                              SizedBox(height: height*0.009,),
                              Container(
                                height: height*0.052,
                                width: width*0.29,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(23),

                                ),
                                child:  Center(
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      // color: Color(0xff8B5F9C),
                                        color: Colors.black,
                                        fontSize: height * 0.016,
                                        fontWeight: FontWeight.w600,
                                        height: 0),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 8,right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Living Room",
                      style: TextStyle(
                        // color: Color(0xff8B5F9C),
                          color: Colors.black,
                          fontSize: height * 0.022,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),

                    Text(
                      "Bedroom",
                      style: TextStyle(
                        // color: Color(0xff8B5F9C),
                          color: Colors.black.withOpacity(0.4),
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                    Text(
                      "Kitchen",
                      style: TextStyle(
                        // color: Color(0xff8B5F9C),
                          color: Colors.black.withOpacity(0.4),
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                  ],
                ),
              ),
SizedBox(height: height*0.025,),
              Padding(
                padding: const EdgeInsets.only(right: 8.0,top: 6),
                child: SizedBox(
                  width: width,
                  height: height * 0.565,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 17,
                        crossAxisCount: 2,
                        crossAxisSpacing: 18,
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
                          child: Container(
                            height: height*0.35,
                            width: width*0.29,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                              color:slectedIndex==index?Colors.black: Colors.white,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24.0,left: 19,right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: height*0.054,
                                        width: width*0.11,
                                        decoration: BoxDecoration(
                                          color:slectedIndex==index?Colors.yellow.withOpacity(0.3):Colors.black.withOpacity(0.4),
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: Icon(
                                          Icons.lightbulb_outline,
                                          size: 40,
                                          color:slectedIndex==index
                                              ? Colors.yellow // Change color when selected
                                              : Colors.black,
                                        ),
                                      ),
                                      SizedBox(width: width*0.17),
                                      Icon(
                                        Icons.star,
                                        size:27.0,
                                        color:slectedIndex==index?Colors.white:Colors.black.withOpacity(0.4),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: height*0.035,),
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
                                    texts[index],
                                    style: TextStyle(
                                      // color: Color(0xff8B5F9C),
                                        color:slectedIndex==index?Colors.white:Colors.black.withOpacity(0.4),
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w400,
                                        height: 0),
                                  ),
                                  SizedBox(height: height*0.028,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                       switchValue[index] ? 'ON' : 'OFF',

                                        style: TextStyle(fontSize: 16, color:slectedIndex==index?Colors.white:Colors.black.withOpacity(0.4),),
                                      ),
                                      SizedBox(width: 40),
                                      Switch(
                                        value:switchValue[index],
                                        onChanged: (newValue) {
                                          setState(() {
                                            switchValue[index] = newValue;
                                          },);
                                        },
                                        activeColor:slectedIndex==index ? Colors.white : Colors.black, // Set active color based on state
                                        inactiveThumbColor: slectedIndex==index ? Colors.green.withOpacity(0.5) : Colors.black.withOpacity(0.3), // Set inactive color based on state
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
  }
}
