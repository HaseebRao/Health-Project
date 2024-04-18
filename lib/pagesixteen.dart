import 'package:flutter/material.dart';
class Pagesixteen extends StatelessWidget {
  const Pagesixteen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: Column(
          children: [
            SizedBox(height: height*0.9622,width: width,
            child: Stack(
              children: [
                Container(
                  height: height*0.35,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(28.0),
                      bottomRight: Radius.circular(28.0),
                    ),
                  ),
                ),
                Positioned(top: height*0.015,
                  child: Row(
                    children: [
                      SizedBox(width: width*0.041),
                      Icon(
                      Icons.arrow_back_ios_new_sharp,
                      size: 35.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: width*0.68,),
                    Icon(
                      Icons.more_horiz,
                      size:41.0,
                      color: Colors.white,
                    ),
                  ],),
                ),
                Positioned(top: height*0.18,
                  child: Row(
                    children: [
                      SizedBox(width: width*0.11),
                      Text(
                        'Location 1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w700,
                            height: 0),
                      ),
                      SizedBox(width: width*0.08,),
                      Icon(
                        Icons.compare_arrows,
                        size:30.0,
                        color: Colors.white.withOpacity(0.7),
                      ),
                      SizedBox(width: width*0.08,),
                      Text(
                        'Location 2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: height * 0.025,
                            fontWeight: FontWeight.w700,
                            height: 0),
                      ),
                    ],),
                ),
               // Positioned(top: height*0.38,
               //   child: Container(
               //     height: height*0.061,
               //     width: width*0.13,
               //     decoration: BoxDecoration(
               //       color: Colors.indigo,
               //       borderRadius: BorderRadius.circular(40),
               //
               //     ),
               //    child: Icon(
               //       Icons.car_crash_outlined,
               //       size:35.0,
               //       color: Colors.white,
               //     ),
               //
               //   ),
               // ),
               Positioned(top: height*0.28,
                 child: SizedBox(height: height*0.55, width: width,
                     child:ListView.builder(
                         scrollDirection: Axis.vertical,
                         itemCount: 2,
                         itemBuilder: (context, index){
                           return Padding(
                             padding:  EdgeInsets.only(bottom: height*0.032),
                             child: SizedBox(height: height*0.26,width: width,
                               child: Stack(
                                          alignment: Alignment.topLeft,
                                 children: [
                                   Align(alignment:Alignment.bottomCenter,
                                     child: Container(
                                       width: width *0.835,
                                       height: height * 0.23,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         // Container background color
                                         borderRadius: BorderRadius.circular(25.0),
                                         // Border radius
                                       ),
                                       child:  Padding(
                                         padding: const EdgeInsets.only(top:35.0,left: 22),
                                         child:Row(
                                           children: [
                                             Column(
                                               children: [
                                                 Container(
                                                   height: height*0.040,
                                                   width: width*0.082,
                                                   decoration: BoxDecoration(
                                                     color: Colors.greenAccent,
                                                     borderRadius: BorderRadius.circular(60),
                                                   ),
                                                   child: Icon(
                                                     Icons.play_arrow_sharp,
                                                     size:28.0,
                                                     color: Colors.white,
                                                   )
                                                 ),
                                                 SizedBox(height: height*0.03,),
                                                 Container(
                                                   height: height*0.041,
                                                   width: width*0.08,
                                                   decoration: BoxDecoration(
                                                     color: Colors.deepPurple,
                                                     borderRadius: BorderRadius.circular(60),
                                                   ),
                                                   child: Icon(
                                                     Icons.location_on,
                                                     size:28.0,
                                                     color: Colors.white,
                                                   ),
                                                 ),
                                               ],
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(left:13.0),
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   SizedBox(height: height*0.005,),
                                                   Text(
                                                     'Location 1',
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                         color: Colors.deepPurple,
                                                         fontSize: height * 0.022,
                                                         fontWeight: FontWeight.w600,
                                                         height: 0),
                                                   ),
                                                   Text(
                                                     'Date',
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                         color: Colors.black.withOpacity(0.5),
                                                         fontSize: height * 0.013,
                                                         fontWeight: FontWeight.w400,
                                                         height: 0),
                                                   ),
                                                   SizedBox(height: height*0.03,),
                                                   Text(
                                                     'Location 2',
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                         color: Colors.deepPurple,
                                                         fontSize: height * 0.022,
                                                         fontWeight: FontWeight.w600,
                                                         height: 0),
                                                   ),
                                                   Text(
                                                     'Date',
                                                     textAlign: TextAlign.center,
                                                     style: TextStyle(
                                                         color: Colors.black.withOpacity(0.5),
                                                         fontSize: height * 0.013,
                                                         fontWeight: FontWeight.w400,
                                                         height: 0),
                                                   ),
                                                 ],
                                               ),
                                             ),
                                             Padding(
                                               padding: const EdgeInsets.only(left: 52.0),
                                               child: Column(
                                                 crossAxisAlignment: CrossAxisAlignment.start,
                                                 children: [
                                                   Padding(
                                                     padding: const EdgeInsets.only(bottom: 14.0),
                                                     child: Row(
                                                       children: [
                                                         Text(
                                                           "Travel time:",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.black.withOpacity(0.5),
                                                               fontSize: height * 0.012,
                                                               fontWeight: FontWeight.w300,
                                                               height: 0),
                                                         ),
                                                         SizedBox(width: width*0.01,),
                                                         Text(
                                                           "30min",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.green,
                                                               fontSize: height * 0.013,
                                                               fontWeight: FontWeight.w500,
                                                               height: 0),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: const EdgeInsets.only(bottom: 10.0),
                                                     child: Row(
                                                       children: [
                                                         Text(
                                                           "Departure on",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.black.withOpacity(0.5),
                                                               fontSize: height * 0.012,
                                                               fontWeight: FontWeight.w300,
                                                               height: 0),
                                                         ),
                                                         SizedBox(width: width*0.01,),
                                                         Text(
                                                           "75mins",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.green,
                                                               fontSize: height * 0.013,
                                                               fontWeight: FontWeight.w500,
                                                               height: 0),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                                                   Padding(
                                                     padding: const EdgeInsets.only(bottom: 10.0),
                                                     child: Row(
                                                       children: [
                                                         Text(
                                                           "price",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.black.withOpacity(0.3),
                                                               fontSize: height * 0.012,
                                                               fontWeight: FontWeight.w500,
                                                               height: 0),
                                                         ),
                                                         SizedBox(width: width*0.01,),
                                                         Text(
                                                           "\$1,50",
                                                           textAlign: TextAlign.center,
                                                           style: TextStyle(
                                                               color: Colors.green,
                                                               fontSize: height * 0.035,
                                                               fontWeight: FontWeight.w800,
                                                               height: 0),
                                                         ),
                                                       ],
                                                     ),
                                                   ),
                                                   Container(
                                                     height: height*0.045,
                                                     width: width*0.29,
                                                     decoration: BoxDecoration(
                                                       color: Colors. deepPurple,
                                                       borderRadius: BorderRadius.circular(18)
                                                     ),
                                                     child:  Center(
                                                       child: Text(
                                                         "BUY TICKET",
                                                         textAlign: TextAlign.center,
                                                         style: TextStyle(
                                                             color: Colors.white,
                                                             fontSize: height * 0.016,
                                                             fontWeight: FontWeight.w700,
                                                             height: 0),
                                                       ),
                                                     ),
                                                   )
                                                 ],
                                               ),
                                             )
                                           ],
                                         )
                                       ),
                                     ),
                                   ),
                                   Positioned(left: width*0.18,
                                     child: Container(
                                       height: height*0.051,
                                       width: width*0.11,
                                       decoration: BoxDecoration(
                                         color: Colors.indigo,
                                         borderRadius: BorderRadius.circular(50),
                                       ),
                                       child: Icon(
                                         Icons.car_crash_outlined,
                                         size:25.0,
                                         color: Colors.white,
                                       ),

                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           );
                         }
                     )
                 ),
               ),
                Positioned(top: height*0.88,
                  child: Container(
                    height: height*0.12,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors. white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 30),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.home,
                            size:35,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          Icon(
                            Icons.cloud_circle_sharp,
                            size:35,
                            color: Colors. deepPurple,
                          ),
                          Icon(
                            Icons.watch_later_rounded,
                            size:35,
                            color: Colors.black.withOpacity(0.3),
                          ),
                          Icon(
                            Icons.person,
                            size:35,
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ],
                      ),
                    )
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

