import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:health/pagefourtyone.dart';
class Pagefourtytwo extends StatefulWidget {
  const Pagefourtytwo({super.key});

  @override
  State<Pagefourtytwo> createState() => _PagefourtytwoState();
}

class _PagefourtytwoState extends State<Pagefourtytwo> {

  int _slected=-1;
  int _list=-1;
  @override
  List<mobile>mobiledata=[
    mobile(data: "Auto", icon:Icons.auto_fix_high),
    mobile(data: "Pie", icon:Icons.pie_chart),
    mobile(data: "Doughnut", icon:Icons.incomplete_circle),
    mobile(data: "Radar", icon:Icons.radar),
    mobile(data: "Bar", icon:Icons.bar_chart_outlined),
    mobile(data: "Bubble", icon:Icons.bubble_chart_outlined),
    mobile(data: "Radar", icon:Icons.radar),
    mobile(data: "Bar", icon:Icons.bar_chart_outlined),
    mobile(data: "Bubble", icon:Icons.bubble_chart_outlined),
  ];
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      body: Column(
        children: [
          Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.red.shade900,
                Colors.black,// Add red color at the top with some opacity
                Colors.black, // More black color
                Colors.black, // More black color
                Colors.black,// More black color
              ],
            ),
          ),
       child:Padding(
         padding:  EdgeInsets.only(top: height*0.05,left: width*0.05,right: width*0.05,),
         child: Column(
           children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
         GestureDetector(
           onTap: (){
             Navigator.push(
               context, MaterialPageRoute(builder: (context)=>pagefourtyone()),
             );
           },
           child: Container(
             height: height*0.05,
             width: width*0.1,
             // color: Colors.yellow,
             child: Icon(
             Icons.arrow_back_ios,
               size:21.0,
               color:Colors.white,
             ),
           ),
         ),
          Icon(
            Icons.share,
            size:21.0,
            color:Colors.white,
          ),
          ],
         ),
             SizedBox(height: height*0.02,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Prompt",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: height * 0.022,
                       fontWeight: FontWeight.w400,
                       height: 0),
                 ),
                 Text(
                   "16 prompt left",
                   style: TextStyle(
                       color: Colors.white.withOpacity(0.5),
                       fontSize: height * 0.015,
                       fontWeight: FontWeight.w500,
                       height: 0),
                 ),
               ],
             ),
             SizedBox(height: height*0.02,),
             Container(
               height: height*0.12,
               width: width,
               decoration: BoxDecoration(
                 color: Colors.black54.withOpacity(0.2),
                 border: Border.all( color: Colors.white38,
                 ),
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Padding(
                 padding:  EdgeInsets.only(left: width*0.03,right: width*0.02,top: height*0.025),
                 child: SizedBox(
                   height: height*0.2,
                   width: width*0.6,
                   child: Text(
                     "2 option actively charge chart 4, value(sleep, education work &workout),x week, y times, random data and grow up...",
                     style: TextStyle(
                         color: Colors.white.withOpacity(0.6),
                         fontSize: height * 0.015,
                         fontWeight: FontWeight.w500,
                         height: height*0.0016,),
                   ),
                 ),
               ),
             ),
SizedBox(height: height*0.023,),
             Container(
               height: height*0.056,
               width: width,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(30),
               ),
               child: Row(
                 children: [
                   Padding(
                     padding:  EdgeInsets.only(top: height*0.013,left: width*0.37),
                     child: Column(
                       children: [
                         Icon(
                           Icons.star_rate_sharp,
                           size:12.0,
                           color:Colors.red,
                         ),
                         Row(
                           children: [
                             Icon(
                               Icons.star_rate_sharp,
                               size:12.0,
                               color:Colors.red,
                             ),
                             Icon(
                               Icons.star_rate_sharp,
                               size:12.0,
                               color:Colors.red,
                             ),
                           ],
                         )
                       ],
                     ),
                   ),
SizedBox(width: width*0.01,),
                   Text(
                     "Generate",
                     style: TextStyle(
                         color: Colors.black,
                         fontSize: height * 0.015,
                         fontWeight: FontWeight.w500,
                         height: 0),
                   ),
                 ],
               ),
             ),
             SizedBox(height: height*0.045,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Chart Type",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: height * 0.021,
                       fontWeight: FontWeight.w400,
                       height: 0),
                 ),
                 Icon(
                   Icons.arrow_forward_ios,
                   size:18.0,
                   color:Colors.white,
                 ),
               ],
             ),
             SizedBox(height: height*0.0002,),
             SizedBox(
               height: height*0.24,
               width: width,
               child: GridView.builder(
                   physics: BouncingScrollPhysics(),
                 itemCount: 6,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 3, // Number of items in the horizontal axis
                     mainAxisSpacing: 1, // Spacing between rows
                     crossAxisSpacing: 12,
                     childAspectRatio: 1.18,
                   ), itemBuilder: (BuildContext context, int index){
                     return GestureDetector(
                       onTap: (){
                         setState(() {
                           _slected=index;
                         });
                       },
                       child: Column(
                         children: [
                           Container(
                             height: height*0.105,
                             width: width*0.34,
                             decoration: BoxDecoration(
                               // color: Colors.green,
                               borderRadius: BorderRadius.circular(12),
                             ),
                             child: Column(
                               children: [
                                 Container(
                                   height: height*0.075,
                                   width: width*0.275,
                                   decoration: BoxDecoration(
                                       color:  _slected==index?Colors.red:Colors.black,
                                     borderRadius:BorderRadius.circular(12),
                                     border: Border.all(color:  _slected==index?Colors.white:Colors.red,
                                     )
                                   ),
                                   child:Icon(
                                     mobiledata[index].icon,
                                     size:35.0,
                                     color:  _slected==index?Colors.white:Colors.red,
                                   ),
                                 ),
                                 SizedBox(height: height*0.01,),
                                 Text(
                                  mobiledata[index].data,
                                   style: TextStyle(
                                       color:  _slected==index?Colors.red:Colors.white,
                                       fontSize: height * 0.015,
                                       fontWeight: FontWeight.w400,
                                       height: 0),
                                 ),
                               ],
                             ),
                           )
                         ],
                       ),
                     );
               }),
             ),
             SizedBox(height: height*0.04,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Chart Info",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: height * 0.021,
                       fontWeight: FontWeight.w400,
                       height: 0),
                 ),
                 Icon(
                   Icons.keyboard_arrow_up_rounded,
                   size:35.0,
                   color:Colors.white,
                 ),
               ],
             ),
             SizedBox(
               height: height*0.165,
               width: width,
               child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   itemCount: 8,
                   itemBuilder: (context, index){
                     return Padding(
                       padding: EdgeInsets.only(bottom: height*0.02),
                       child: Container(
                         height: height*0.07,
                         width: width,
                         decoration: BoxDecoration(
                           color: Colors.white38.withOpacity(0.2),
                           borderRadius: BorderRadius.circular(15),
                           border: Border.all(color: Colors.white,width: width*0.001,
                           )
                         ),
                         child: Padding(
                           padding:  EdgeInsets.only(top: height*0.02,left: width*0.05),
                           child: Text(
                             "Daily Activity",
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: height * 0.017,
                                 fontWeight: FontWeight.w400,
                                 height: 0),
                           ),
                         ),
                       ),
                     );
                   }),
             ),
     SizedBox(
       height: height*0.06,
       width: width,
       child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: 2,
           itemBuilder: (context, index){
             return Padding(
               padding:  EdgeInsets.only(right: width*0.1),
               child: GestureDetector(
                 onTap: (){
                   setState(() {
                     _list=index;
                   });
                 },
                 child: Container(
                        height: height*0.03,
                   width: width*0.4,
                   decoration: BoxDecoration(
                     color:  _list==index?Colors.red:Colors.white,
                     borderRadius: BorderRadius.circular(30),
                   ),
                   child: Center(
                     child: Text(
                       "Customise data",
                       style: TextStyle(
                           color:  _list==index?Colors.white:Colors.black,
                           fontSize: height * 0.017,
                           fontWeight: FontWeight.w400,
                           height: 0),
                     ),
                   ),
                 ),
               ),
             );
           }),
     )



             // SizedBox(
             //   height: height*0.29,
             //   width: width,
             //   child: GridView.builder(
             //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             //       crossAxisCount: 3,
             //     ),
             //     itemCount: 9, // Total number of items
             //     itemBuilder: (BuildContext context, int index) {
             //       return GestureDetector(
             //         onTap: (){
             //           setState(() {
             //             _slected=index;
             //
             //           });
             //         },
             //         child: Container(
             //           height: height*0.1,
             //           color: Colors.yellowAccent,
             //           child:
             //         )
             //       );
             //     },
             //   ),
             // ),
           ],
         ),
       )
          )
        ]
      ),
    );
  }
}
class mobile{
  String data;
  IconData icon;
  mobile({
    required this.data, required this.icon,
});
}