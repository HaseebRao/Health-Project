import 'dart:math';
import 'package:flutter/material.dart';
import 'package:calendar_slider/calendar_slider.dart';
class Pagethirtytwo extends StatefulWidget {
   Pagethirtytwo({super.key});
  @override
  State<Pagethirtytwo> createState() => _PagethirtytwoState();
}
class _PagethirtytwoState extends State<Pagethirtytwo> {
  final CalendarSliderController _secondController = CalendarSliderController();
  late DateTime _selectedDateAppBBar;
  late DateTime _selectedDateNotAppBBar;
  Random random = Random();
  List<String> text = [
    'To do',
    "In progress",
    'Under review',
  ];
  List<String> texts = [
    '3',
    "2",
    '1',
  ];
  List<String> image = [
    "assets/images/flowers.jpg",
    "assets/images/puple.jpg",
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  int _selectedIndex = 0;
  int _isSlected=-1;

  List<Color> color =[
    Colors.lightGreenAccent,
    Colors.lightBlueAccent.withOpacity(0.6),
    Colors.yellowAccent,
  ];
  @override
  void initState() {
    super.initState();
    _selectedDateAppBBar = DateTime.now();
    _selectedDateNotAppBBar = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: width*0.05,top: height*0.01,right: width*0.04),
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
                            image: AssetImage('assets/images/pink.jpg'),
                            // Asset image path
                            fit: BoxFit.fill,
                            // Image fit property

                          ),
                        ),
                      ),
                      SizedBox(width: width*0.02,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Good Morning, Elly',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.022,
                                    fontWeight: FontWeight.w400,
                                    height: 0),
                              ),
                              SizedBox(width: width*0.02,),

                            ],
                          ),
                          Text(
                            "Today 17 Oct.",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w400,
                                height: 0),
                          ),
                        ],
                      ),
                      SizedBox(width: width*0.20,),
                      Container(
                        width: width * 0.12,
                        height: height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(49.0),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.shopping_cart_rounded,
                          size: 30.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.03,),
                  SizedBox(
                    height: height*0.12,
                    child: Container(
                      height: height*0.11,

                      decoration: BoxDecoration(
                        color: Colors.white12,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2), // Set color with opacity
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), // Offset position
                            ),
                          ],
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: CalendarSlider(
                        tileHeight: height*0.1,
                      dateColor: Colors.white.withOpacity(0.6),
                      tileBackgroundColor: Colors.white12,
                        backgroundColor: Colors.transparent,
                        monthYearTextColor: Colors.transparent,
                        monthYearButtonBackgroundColor:Colors.transparent,
                        controller: _secondController,
                        selectedDayPosition: SelectedDayPosition.right,
                        locale: 'en',
                        selectedDateColor: Colors.black,
                        selectedTileBackgroundColor: Colors.white,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now().subtract(const Duration(days: 140)),
                        lastDate: DateTime.now().add(const Duration(days: 400)),
                        events: List.generate(
                            100,
                                (index) => DateTime.now()
                                .subtract(Duration(days: index * random.nextInt(5)))),
                        onDateSelected: (date) {
                          setState(() {
                            _selectedDateNotAppBBar = date;
                          });
                        },
                        fullCalendarBackgroundImage: Image.network(
                          'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
                          scale: 5.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.015,),
                  Row(
                    children: [
                      SizedBox(
                        height: height * 0.052,
                        width: width*0.9,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:  EdgeInsets.only(right: width*0.026),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _isSlected=index;
                                    });
                                  },
                                  child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.009),
                                    decoration: BoxDecoration(
                                      color: Colors.white12.withOpacity(0.4),
                                      boxShadow: [
                                        // BoxShadow(
                                        //   color: Colors.blue.withOpacity(0.07),
                                        //   spreadRadius: 5,
                                        //   blurRadius: 7,
                                        //   offset: Offset(0, 3), // changes position of shadow
                                        // ),
                                      ],
                                      borderRadius: BorderRadius.circular(15.0),
                                      border: Border.all(
                                        color: _isSlected==index?Colors.lightGreenAccent:Colors.white12.withOpacity(0.0), // Specify the color of the border
                                        width: 2, // Specify the width of the border
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                         text[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: height * 0.015,
                                              fontWeight: FontWeight.w500,
                                              height: 0),
                                        ),
                                    SizedBox(width: width*0.035,),
                                        Container(
                                          height: height*0.033,
                                          width: width*0.068,
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(35),
                                              color:color[index],
                                          ),
                                          child: Center(
                                            child: Text(
                                             texts[index],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: height * 0.015,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.037,),
                  Text(
                    'You have 6 tasks',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.025,
                        fontWeight: FontWeight.w400,
                        height: 0),
                  ),
                  SizedBox(height: height*0.005,),
                  Row(
                    children: [
                      Text(
                        'Medium piority',
                        style: TextStyle(
                            color: Colors.lightGreenAccent,
                            fontSize: height * 0.019,
                            fontWeight: FontWeight.w400,
                            height: 0),
                      ),
                      SizedBox(width: width*0.004,),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                 SizedBox(height: height*0.025,),
                 Column(
                    children: [
                      SizedBox(
                        height: height * 0.465,
                        width: width*0.9,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 2,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:  EdgeInsets.only(bottom: height*0.015),
                                child: Container(
                                  height: height*0.224,
                                  width: width*0.6,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      // Asset image path
                                      fit: BoxFit.fill,
                                      // Image fit property
                                    ),
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: width*0.055,top: height*0.025),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(height: height*0.036,
                                            width: width*0.19,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: width * 0.075,
                                                  height: height * 0.035,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    // Container background color
                                                    borderRadius: BorderRadius.circular(49.0),
                                                    // Border radius
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/images/pink.jpg'),
                                                      // Asset image path
                                                      fit: BoxFit.fill,
                                                      // Image fit property
                                                    ),
                                                  ),
                                                ),
                                                Positioned(left: width*0.058,
                                                  child: Container(
                                                    width: width * 0.075,
                                                    height: height * 0.035,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      // Container background color
                                                      borderRadius: BorderRadius.circular(49.0),
                                                      // Border radius
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/images/red.jpg'),
                                                        // Asset image path
                                                        fit: BoxFit.fill,
                                                        // Image fit property
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(left: width*0.11,
                                                  child: Container(
                                                    width: width * 0.075,
                                                    height: height * 0.035,
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      // Container background color
                                                      borderRadius: BorderRadius.circular(49.0),
                                                      // Border radius
                                                      image: DecorationImage(
                                                        image: AssetImage('assets/images/man.jpg'),
                                                        // Asset image path
                                                        fit: BoxFit.fill,
                                                        // Image fit property
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),),
                                            SizedBox(width: width*0.36,),
                                            Container(height: height*0.04,
                                            width: width*0.25,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Freelance',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: height * 0.017,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0),
                                              ),
                                            ),)

                                          ],
                                        ),
                                        SizedBox(height: height*0.01,),
                                        SizedBox(
                                          height: height*0.096,
                                          width: width*0.42,
                                          child:  Text(
                                            'Make changes to the "My chat" project',

                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.025,
                                                fontWeight: FontWeight.w500,
                                                height: 0),
                                          ),
                                        ),
                                        SizedBox(height: height*0.01,),
                                        Row(

                                          children: [

                                          Text(
                                            'Due: 20 Oct',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.017,
                                                fontWeight: FontWeight.w400,
                                                height: 0),
                                          ),
                                          SizedBox(width: width*0.49,),
                                          Text(
                                            '95%',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: height * 0.026,
                                                fontWeight: FontWeight.w800,
                                                height: 0),
                                          ),
                                        ],)


                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.black,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
