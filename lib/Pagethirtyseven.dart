import 'package:flutter/material.dart';
class Pagethirtyseven extends StatefulWidget {
  const Pagethirtyseven({super.key});

  @override
  State<Pagethirtyseven> createState() => _PagethirtysevenState();
}

class _PagethirtysevenState extends State<Pagethirtyseven> {
  @override
  List<modal> datafatch =[
    modal (image: "assets/images/pink.jpg",text: "Joe Root", title: "okay I'll try, Can you help",color: Colors.orange, value: "2:34"),
    modal(image: "assets/images/exerciseee.jpg",text: "Navel Joard", title: "Hahaha, You are a graat person",color: Colors.lightBlue,value: "4:56"),
    modal(image:   "assets/images/yoga.jpg",text: "James Anderson", title: "Thanks for your appreciation",color: Colors.blueAccent,value: "6:45"),
    modal(image:  "assets/images/exercise.jpg",text: "Health Fitness", title: "30 minuts a day",color: Colors.red,value: "2:76"),
  ];
  List<String> imagee = [
    "assets/images/mene.jpg",
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
  List<Color> mycolore=[
    Colors.red,
    Colors.blueGrey.withOpacity(0.7),
    Colors.blueGrey.withOpacity(0.4),
    Colors.greenAccent.withOpacity(0.15),
    Colors.lightGreenAccent.withOpacity(0.25),
    Colors.teal.withOpacity(0.25),
  ];
  List<String> texts = [
    'Chats',
    "Status",
    'Calls',
  ];
  List<String> text = [
    '3',
    "2",
    '2',
  ];
  int _onTab=0;
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: height*0.02),
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: (){

          },
          child:  Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
            size: 28,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height*0.37,
            width: width,
            child: Stack(
              children:[
                ClipPath(
                  clipper: PaintingView(),
                  child: Container(
                    height: height * 0.368,
                    width: width,
                    color: Colors.indigo.shade900,
                    child: Padding(
                      padding:  EdgeInsets.only(top: height*0.052, left: width*0.04,right: width*0.03),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.white,
                                size: 28,
                              ),
                              Text(
                                "Modychat",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.search_outlined,
                                color: Colors.white,
                                size: 28,
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.046,
                          ),
                          Container(
                              height: height * 0.085,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                  color: Colors.indigo.shade400,
                                  borderRadius: BorderRadius.circular(16)),
                              child: SizedBox(
                                height: height*0.01,
                                width: width*0.6,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:  EdgeInsets.only(left: width*0.04,top: height*0.015,bottom: height*0.015),
                                        child: GestureDetector(
                                          onTap: (){
                                            setState(() {
                                              _onTab=index;
                                            });
                                          },
                                          child: Container(
                                            width: width*0.22,
                                            decoration: BoxDecoration(
                                              color: _onTab==index?Colors.indigo.shade600:Colors.indigo.shade400,
                                              borderRadius: BorderRadius.circular(12),
                                            ),
                                            child:  Center(
                                              child: Text(
                                                texts[index],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: height * 0.02,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                ),
                              )
                          ),
                        ],
                      ),
                    ),
                  ) ,
                ),

                Positioned(top: height*0.32,left: width*0.06,
                  child: Row(
                    children: [
                      Text(
                        'All Chats',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: height * 0.021,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                      SizedBox(width: width*0.62,),
                      Icon(
                        Icons.water,
                        color: Colors.indigo,
                        size: 26,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: width*0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Friends',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: height * 0.015,
                      fontWeight: FontWeight.w500,
                      height: 0),
                ),
                // SizedBox(height: height*0.001,),
                SizedBox(height: height*0.282,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    // physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Padding(
                        padding:  EdgeInsets.only(bottom: height*0.01,),
                        child: Container(
                          height: height*0.08,
                          width: width*0.08,
                          decoration: BoxDecoration(
                            // color: Colors.yellowAccent,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                height: height*0.2,
                                width: width*0.2,
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        height: height*0.18,
                                        width: width*0.155,
                                        decoration: BoxDecoration(
                                          color:Colors.red.shade200,
                                          image: DecorationImage(
                                            image: AssetImage(datafatch[index].image),
                                            // Asset image path
                                            fit: BoxFit.fill,
                                            // Image fit property
                                          ),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                    ),
                                    Positioned(left: width*0.139,
                                      child: Container(
                                        height: height*0.021,
                                        width: width*0.038,
                                        decoration: BoxDecoration(
                                          color: mycolore[index],
                                          borderRadius: BorderRadius.circular(12)
                                        ),
                                        child:
                                        Center(
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: height * 0.012,
                                                fontWeight: FontWeight.w500,
                                                height: 0),
                                          ),
                                        ),
                                      ),

                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: width*0.01,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: height*0.011,),
                                  Text(
                                 datafatch[index].text,
                                    style: TextStyle(
                                      color: Colors.indigo.shade800,
                                      fontSize: height * 0.020,
                                      fontWeight: FontWeight.w600,
                                      height: 0),),
                                  SizedBox(height: height*0.011,),

                                  Text(
                                   "Okay I II try, Can you help",
                                    style:    TextStyle(
                                      color: Colors.black.withOpacity(0.3),
                                      fontSize: height * 0.0135,
                                      fontWeight: FontWeight.w500,
                                      height: 0),),
                                ],
                              ),
                              SizedBox(width: width*0.252,),

                              Text(
                                datafatch[index].value,
                                style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: height * 0.015,
                                  fontWeight: FontWeight.w600,
                                  height: 0),),
                            ],
                          ),

                        ),
                      );
                    }),),
                SizedBox(height: height*0.027,),
                Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                    SizedBox(width: width*0.02,),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 12,
                    ),
                  ],
                ),
                SizedBox(height: height*0.03,),
                Text(
                  'Group message',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3),
                      fontSize: height * 0.016,
                      fontWeight: FontWeight.w500,
                      height: 0),
                ),
                SizedBox(height: height*0.187,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 2,
                      // physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        return Padding(
                          padding:  EdgeInsets.only(bottom: height*0.01,),
                          child: Container(
                            height: height*0.08,
                            width: width*0.08,
                            decoration: BoxDecoration(
                              // color: Colors.yellowAccent,
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: height*0.2,
                                  width: width*0.2,
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          height: height*0.18,
                                          width: width*0.155,
                                          decoration: BoxDecoration(
                                            color:Colors.red.shade200,
                                            image: DecorationImage(
                                              image: AssetImage(datafatch[index].image),
                                              // Asset image path
                                              fit: BoxFit.fill,
                                              // Image fit property
                                            ),
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                      ),
                                      Positioned(left: width*0.139,
                                        child: Container(
                                          height: height*0.021,
                                          width: width*0.038,
                                          decoration: BoxDecoration(
                                              color: mycolore[index],
                                              borderRadius: BorderRadius.circular(12)
                                          ),
                                          child:
                                          Center(
                                            child: Text(
                                              '2',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: height * 0.012,
                                                  fontWeight: FontWeight.w500,
                                                  height: 0),
                                            ),
                                          ),
                                        ),

                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: width*0.01,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: height*0.011,),
                                    Text(
                                      datafatch[index].text,
                                      style: TextStyle(
                                          color: Colors.indigo.shade800,
                                          fontSize: height * 0.020,
                                          fontWeight: FontWeight.w600,
                                          height: 0),),
                                    SizedBox(height: height*0.011,),

                                    Text(
                                      "Okay I II try, Can you help",
                                      style:    TextStyle(
                                          color: Colors.black.withOpacity(0.3),
                                          fontSize: height * 0.0135,
                                          fontWeight: FontWeight.w500,
                                          height: 0),),
                                  ],
                                ),
                                SizedBox(width: width*0.252,),

                                Text(
                                  datafatch[index].value,
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w600,
                                      height: 0),),
                              ],
                            ),

                          ),
                        );
                      }),),
                SizedBox(height: height*0.01,),
                Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: height * 0.017,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                    SizedBox(width: width*0.02,),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.red,
                      size: 12,
                    ),
                  ],
                ),





              ],
            ),
          )


        ],
      ),
    );

  }
}
class PaintingView extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(size.width / 11,3 * (size.height / 2.9), 3 * (size.width / 3.2),
        size.height / 2.2, size.width, size.height);
    path.lineTo(size.width, 2);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
class modal{
  String image;
  String text;
  String title;
  Color color;
  String value;
  modal({
    required this.image, required this.text, required this.title, required this. color,required this .value,
  });
}
// class PaintingView extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(3, size.height / 3.3);
//     path.moveTo(size.width, size.height / 9999);
//     path.cubicTo(
//         size.width - (size.width / 9999.2),
//         3.4* (size.height / 2.3),
//         size.width - (4 * (size.width / 99999.9)),
//         size.height / 1.4,
//         0,
//         size.height);
//     path.lineTo(0, 0);
//     return path;
//   }
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }