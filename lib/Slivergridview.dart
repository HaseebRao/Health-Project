import 'package:flutter/material.dart';
class Slivergridview extends StatefulWidget {
  const Slivergridview({super.key});

  @override
  State<Slivergridview> createState() => _SlivergridviewState();
}

class _SlivergridviewState extends State<Slivergridview> {
  @override
  List<modal> datafatch =[
    modal (image: "assets/images/cycle.jpg",text: "Joe Root", title: "okay I'll try, Can you help",color: Colors.orange, value: "3:34"),
    modal(image: "assets/images/exerciseee.jpg",text: "Navel Joard", title: "Hahaha, You are a graat person",color: Colors.lightBlue,value: "2:56"),
    modal(image:   "assets/images/yoga.jpg",text: "James Anderson", title: "Thanks for your appreciation",color: Colors.blueAccent,value: "2:45"),
    modal(image:  "assets/images/exercise.jpg",text: "Health Fitness", title: "30 minuts a day",color: Colors.red,value: "2:76"),
  ];
  List<String> image = [
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
    Colors.blueGrey.withOpacity(0.4),
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
      body: Column(
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

                Positioned(top: height*0.32,left: width*0.08,
                  child: Row(
                    children: [
                      Text(
                        'All Chats',
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: height * 0.024,
                            fontWeight: FontWeight.w400,
                            height: 0),
                      ),
                      SizedBox(width: width*0.54,),
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
            padding:  EdgeInsets.only(left: width*0.08),
            child: Text(
              'Friends',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.3),
                  fontSize: height * 0.017,
                  fontWeight: FontWeight.w400,
                  height: 0),
            ),
          ),
          SizedBox(
            height: height*0.4,
            child: SliverList(delegate:SliverChildBuilderDelegate(
                (BuildContext context, intindex){
                  return              SizedBox(
                    height: height * 0.31,
                    width: width,
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: height*0.098,
                                width: width*0.9,
                                decoration: BoxDecoration(
                                  // color: Colors.white,
                                  // boxShadow: [
                                  //   BoxShadow(
                                  //     color: Colors.black.withOpacity(0.03),
                                  //     spreadRadius: 5,
                                  //     blurRadius: 7,
                                  //     offset: Offset(0, 3), // changes position of shadow
                                  //   ),
                                  // ],
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
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: width*0.134,bottom: height*0.049),
                                      child: Container(
                                        height: height*0.001,
                                        width: width*0.0001,
                                        decoration: BoxDecoration(
                                          color:mycolore[index],
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child:   Center(
                                          child: Text(
                                            text[index],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: height * 0.013,
                                                fontWeight: FontWeight.w400,
                                                height: 0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  title: Text(datafatch[index].text,style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: height * 0.020,
                                      fontWeight: FontWeight.w600,
                                      height: 0),),
                                  subtitle: Padding(
                                    padding:  EdgeInsets.only(top: height*0.01),
                                    child: Text(datafatch[index].title,style: TextStyle(
                                        color: Colors.black.withOpacity(0.3),
                                        fontSize: height * 0.0135,
                                        fontWeight: FontWeight.w500,
                                        height: 0),),
                                  ),
                                  trailing: Text(datafatch[index].value,style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: height * 0.016,
                                      fontWeight: FontWeight.w500,
                                      height: 0),),
                                ),
                              ),
                            ],
                          );
                        }),
                  );
                }
            )),
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