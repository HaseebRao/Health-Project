
import 'package:flutter/material.dart';
import 'package:health/Tabbar%20task.dart';
class Pagethirtyeight extends StatefulWidget {
  const Pagethirtyeight({super.key});
  @override
  State<Pagethirtyeight> createState() => _PagethirtyeightState();
}
class _PagethirtyeightState extends State<Pagethirtyeight> {
  @override
  List<models> datainter= [
    models(text: "Lun",colors: Colors.orange,switchValue: false,icons:Icons.verified_user_sharp,list: "Bawlcake banae",Repas: "Repas 1" ),
  models(text: "Mar",colors: Colors.lightGreen,switchValue: false, icons: Icons.add_alert,list: "Wrap poulet 1 banane",Repas: "Repas 2" ),
    models(text:'Mer',colors: Colors.orange,switchValue: false, icons: Icons.add_a_photo_rounded, list: "text poulet",Repas: "Repas 3" ),
    models(text:'Mer',colors: Colors.deepOrange,switchValue: false, icons: Icons.add_alarm_sharp,list: "mmmbook",Repas: "Repas 4" ),
    models(text: 'Jeu',colors: Colors.pinkAccent,switchValue: false, icons: Icons.terrain_rounded,list: "kkkbook",Repas: "Repas 5" ),
    models(text: "Ven",colors: Colors.blueAccent,switchValue: false, icons: Icons.account_balance,list: "wwwbook",Repas: "Repas 6" ),
    models(text:  'Sam',colors: Colors.purpleAccent,switchValue: false, icons: Icons.radio_rounded,list: "uuubook",Repas: "Repas 7" ),
    models(text:'Dim',colors: Colors.tealAccent,switchValue: false, icons: Icons.wb_sunny,list: "eeebook",Repas: "Repas 8" ),
  ];
  List<String> imagee = [
    "assets/images/rotii.jpg",
    "assets/images/fruit.jpg",
    "assets/images/rotii.jpg",
    "assets/images/pizza.jpg",
    "assets/images/exercisee.jpg",
    "assets/images/exerciseee.jpg",
  ];
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.97),
body: Column(
  children: [
SizedBox(
  height: height*0.4,
  width: width,
  child: Stack(
    children: [
      Container(
        height: height*0.37,
        width: width,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(100), // Adjust this value to change the curve radius
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: height*0.08,left: width*0.03,),
          child: Column(
            children: [
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: width*0.04),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(
                     'mmmBook',
                     style: TextStyle(
                         color: Colors.white,
                         fontSize: height * 0.037,
                         fontWeight: FontWeight.w800,
                         height: 0),
                   ),
                   // SizedBox(width: width*0.34),
                   Icon(
                     Icons.person,
                     color: Colors.white,
                     size: 38,
                   ),
                 ],
               ),
             ),
              SizedBox(height: height*0.05,),
              SizedBox(
                height: height*0.095,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context , index){
                    return Stack(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(right: width*0.013),
                          child: GestureDetector(
                            onTap:(){
                              setState((){
                                datainter[index].switchValue=!datainter[index].switchValue;
                      });
                      },
                            child: Container(
                              height: height*0.077,
                              width: width*0.122,
                              decoration: BoxDecoration(
                               color: datainter[index].switchValue?Colors.white:Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(14)
                              ),
                              child: Center(
                                child: Text(
                              datainter[index].text,
                                  style: TextStyle(
                                      color: datainter[index].switchValue?datainter[index].colors:Colors.tealAccent.shade100,
                                      fontSize: height * 0.016,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(top:height*0.065,left: width*0.04,
                          child: datainter[index].switchValue?Container(
                            height: height*0.028,
                            width: width*0.052,
                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              datainter[index].icons,
                              color:datainter[index].colors,
                              size: 14,
                            ),
                          ):SizedBox()
                        )
                      ]
                    );
                    }),
              ),
            ],
          ),
        ),
      ),
      Positioned(top: height*0.345,left: height*0.115,
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context)=>Tabbartask()),
            );
          },
          child: Container(
            height: height*0.048,
            width: width*0.52,
            decoration: BoxDecoration(
              color: Colors.teal.shade700,
              borderRadius: BorderRadius.circular(12),
            ),
            child:Padding(
              padding:  EdgeInsets.symmetric(horizontal: width*0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'umporter un outre jour',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.016,
                        fontWeight: FontWeight.w400,
                        height: 0),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 16,
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
  SizedBox(height: height*0.03,),
  Padding(
    padding:  EdgeInsets.only(left: width*0.43),
    child: Row(
      children: [
        Text(
          'journee validee',
          style: TextStyle(
              color: Colors.green,
              fontSize: height * 0.020,
              fontWeight: FontWeight.w800,
              height: 0),
        ),
        SizedBox(width: width*0.04,),
        Container(
          height: height*0.055,
          width: width*0.12,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(17),
          ),
          child:Icon(
            Icons.done,
            color: Colors.white,
            size: 22,
          ),
        )
      ],
    ),
  ),
    SizedBox(height: height*0.02,),
    Text(
      'Quantities calculees mise a jourb - aujour;hui a 14h54',
      style: TextStyle(
          color: Colors.blueAccent.withOpacity(0.4),
          fontSize: height * 0.0145,
          fontWeight: FontWeight.w500,
          height: 0),
    ),



  SizedBox(
     height: height*0.475,
     width: width*0.9,
child:ListView.builder(
    itemCount: 4,
    scrollDirection: Axis.vertical,
    itemBuilder: (contex, index){
      return Padding(
        padding:  EdgeInsets.only(bottom: height*0.02),
        child: Container(
          height: height*0.23,
          width: width*0.5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.01), // You can set the shadow color here
                spreadRadius: 4, // Spread Radius
                blurRadius: 2, // Blur Radius
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
           child: Stack(
             children: [
               Padding(
                 padding:  EdgeInsets.only(top: height*0.075),
                 child: Container(
                   height: height*0.16,
                   width: width*0.9,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     // color: Colors.blueGrey.withOpacity(0.1),
                     borderRadius: BorderRadius.circular(22),
                   ),
                   child: Padding(
                     padding:  EdgeInsets.only(top: height*0.02,left: width*0.04),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           datainter[index].Repas,
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: height * 0.021,
                               fontWeight: FontWeight.w400,
                               height: 0),
                         ),
                         SizedBox(height: height*0.015,),
                         Text(
                           datainter[index].list,
                           style: TextStyle(
                               color: Colors.blue,
                               fontSize: height * 0.016,
                               fontWeight: FontWeight.w700,
                               height: 0),
                         ),
                         SizedBox(height: height*0.015,),
                         Row(
                           children: [
                             Container(
                               height: height*0.03,
                               width: width*0.17,
                               decoration: BoxDecoration(
                                 color: Colors.deepOrangeAccent,
                                 borderRadius: BorderRadius.circular(16),
                               ),
                               child: Center(
                                 child: Text(
                                   '389 kcol',
                                   style: TextStyle(
                                       color: Colors.white,
                                       fontSize: height * 0.014,
                                       fontWeight: FontWeight.w800,
                                       height: 0),
                                 ),
                               ),
                             ),
                             SizedBox(width: width*0.025,),
                             Text(
                               'G 60% P 20% L 20%',
                               style: TextStyle(
                                   color: Colors.deepOrangeAccent,
                                   fontSize: height * 0.014,
                                   fontWeight: FontWeight.w500,
                                   height: 0),
                             ),
                           ],
                         )
                       ],
                     ),
                   ),

                 ),
               ),
               Positioned(top: height*0.06,left: width*0.34,
                 child: Container(
                   height: height*0.039,
                   width: width*0.3,
                   decoration: BoxDecoration(
                     color: Colors.teal,
                     borderRadius: BorderRadius.circular(18),
                   ),
                   child:  Padding(
                     padding: EdgeInsets.only(left: width*0.03,top: height*0.006,),
                     child: Text(
                       'Matin',
                       style: TextStyle(
                           color: Colors.white,
                           fontSize: height * 0.021,
                           fontWeight: FontWeight.w600,
                           height: 0),
                     ),
                   ),
                 ),
               ),
               Positioned(left: width*0.52,
                 child: Container(
                   height: height*0.18,
                   width: width*0.35,
                   decoration: BoxDecoration(
                     color: Colors.teal,
                     borderRadius: BorderRadius.circular(99),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Container(
                       height: height*0.14,
                       width: width*0.27,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(99),
                         image: DecorationImage(
                           image: AssetImage(imagee[index]),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),
                   ),
                 ),
               ),
               Positioned(top: height*0.13,left: width*0.76,
                 child: Container(
                   height: height*0.05,
                   width: width*0.1,
                   decoration: BoxDecoration(
                     color:Colors.deepOrangeAccent,
                     borderRadius: BorderRadius.circular(35),
                   ),
                   child:  Icon(
                     Icons.arrow_forward_ios,
                     color: Colors.white,
                     size: 20,
                   ),
                 ),
               ),
             ],
           ),
        ),
      );
    }),
   )
  ],
),
    );
  }
}
class models{
  String text;
  Color colors;
  IconData icons;
  bool switchValue;
  String list;
  String Repas;
  models({
    required this.text,required this.colors,required this .switchValue, required this. icons,required this. list,required this.Repas,
});
}