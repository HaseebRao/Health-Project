import 'package:flutter/material.dart';
class Pageeighteen extends StatelessWidget {
  const Pageeighteen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Column(
            children: [
             Container(
               height: height*0.51,
               width: width*0.95,
               decoration: BoxDecoration(

                 borderRadius: BorderRadius.circular(42),
                 image: DecorationImage(
                   image: AssetImage('assets/images/gun.jpg'),
                   fit: BoxFit.fill,
                 ),
               ),
               child:Padding(
                 padding: const EdgeInsets.only(left: 35.0,right: 32, top: 38),
                 child: Column(
                   children: [
                     Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                           height: height*0.05,
                           width: width*0.10,
                           decoration: BoxDecoration(
                             color: Colors. blueGrey.shade700,
                             borderRadius: BorderRadius.circular(25),

                           ),
                           child:Icon(
                             Icons.arrow_back_ios_outlined,
                             size:17.0,
                             color: Colors.white,
                           ),
                         ), Container(
                           height: height*0.05,
                           width: width*0.11,
                           decoration: BoxDecoration(
                             color: Colors. blueGrey.shade700,
                             borderRadius: BorderRadius.circular(25),

                           ),
                           child:Icon(
                             Icons.ad_units,
                             size:25.0,
                             color: Colors.white,
                           ),
                         ),
                       ],
                     ),
                     SizedBox(height: height*0.24,),
                     Container(
                       height: height*0.135,
                       width: width,
                       decoration: BoxDecoration(
                         color: Colors.blueGrey.shade900,
                         borderRadius: BorderRadius.circular(15)
                       ),
                       child: Padding(
                         padding: const EdgeInsets.only(top: 20.0,left: 15,right: 11),
                         child: Column(
                           children: [
                             Row(
                               children: [
                                 Text(
                                   "Andes Mountain",
                                   style: TextStyle(
                                     // color: Color(0xff8B5F9C),
                                       color: Colors.white,
                                       fontSize: height * 0.026,
                                       fontWeight: FontWeight.w500,
                                       height: 0),
                                 ),
                                 SizedBox(width: width*0.17,),
                                 Text(
                                   "Price",
                                   style: TextStyle(
                                     // color: Color(0xff8B5F9C),
                                       color: Colors.white.withOpacity(0.8),
                                       fontSize: height * 0.016,
                                       fontWeight: FontWeight.w500,
                                       height: 0),
                                 ),
                               ],
                             ),
                             SizedBox(height: height*0.020,),
                             Row(
                               children: [
                                 Icon(
                               Icons.location_on,
                               size:27.0,
                                   color: Colors.white.withOpacity(0.8),
                             ),
                                 Text(
                                   "South, America",
                                   style: TextStyle(
                                     // color: Color(0xff8B5F9C),
                                       color: Colors.white.withOpacity(0.8),
                                       fontSize: height * 0.018,
                                       fontWeight: FontWeight.w400,
                                       height: 0),
                                 ),
                                 SizedBox(width: width*0.21,),
                             Text(
                               "\$",
                               style: TextStyle(
                                 // color: Color(0xff8B5F9C),
                                   color: Colors. blueGrey.shade600,
                                   fontSize: height * 0.026,
                                   fontWeight: FontWeight.w500,
                                   height: 0),
                             ),
                                 Text(
                                   "230",
                                   style: TextStyle(
                                     // color: Color(0xff8B5F9C),
                                       color: Colors. white,
                                       fontSize: height * 0.026,
                                       fontWeight: FontWeight.w500,
                                       height: 0),
                                 ),
                               ],
                             ),
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               )
             ),
              SizedBox(height: height*0.04,),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 12),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Overview",
                          style: TextStyle(
                            // color: Color(0xff8B5F9C),
                              color: Colors. black,
                              fontSize: height * 0.028,
                              fontWeight: FontWeight.w600,
                              height: 0),
                        ),
                        SizedBox(width: width*0.09,),
                        Text(
                          "Details",
                          style: TextStyle(
                            // color: Color(0xff8B5F9C),
                              color: Colors.grey.shade600,
                              fontSize: height * 0.018,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.044,),
                    Row(
                      children: [
                        Container(
                          height: height*0.032,
                          width: width*0.072,
                          decoration: BoxDecoration(
                            color: Colors. grey.shade200,
                            borderRadius: BorderRadius.circular(4),

                          ),
                          child: Icon(
                            Icons.watch_later,
                            size:17.0,
                            color: Colors.grey.shade800,
                          ),

                        ),
                        SizedBox(width: width*0.015,),
                        Text(
                          "8 hours",
                          style: TextStyle(
                            // color: Color(0xff8B5F9C),
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                        SizedBox(width: width*0.15,),
                        Container(
                          height: height*0.032,
                          width: width*0.072,
                          decoration: BoxDecoration(
                            color: Colors. grey.shade200,
                            borderRadius: BorderRadius.circular(4),

                          ),
                          child: Icon(
                            Icons.wb_cloudy,
                            size:17.0,
                            color: Colors.grey.shade800,
                          ),

                        ),
                        SizedBox(width: width*0.015,),
                        Text(
                          "16 'C",
                          style: TextStyle(
                            // color: Color(0xff8B5F9C),
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                        SizedBox(width: width*0.15,),
                        Container(
                          height: height*0.032,
                          width: width*0.072,
                          decoration: BoxDecoration(
                            color: Colors. grey.shade200,
                            borderRadius: BorderRadius.circular(4),

                          ),
                          child: Icon(
                            Icons.star,
                            size:19.0,
                            color: Colors.grey.shade800,
                          ),

                        ),
                        SizedBox(width: width*0.015,),
                        Text(
                          "4.5",
                          style: TextStyle(
                            // color: Color(0xff8B5F9C),
                              color: Colors.grey.shade600,
                              fontSize: height * 0.020,
                              fontWeight: FontWeight.w500,
                              height: 0),
                        ),
                      ],

                    ),
SizedBox(height: height*0.05,),
                    SizedBox(
                      height: height*0.12,
                      width: width*0.99,
                      child:  Text(
                        "This vast mountain range is renowned for its remarkable diversity is terms of topography & climate. it features towering peaks, active volcanoes. deep canyons. expansive plateaus. ",
                        style: TextStyle(
                          // color: Color(0xff8B5F9C),
                            color: Colors.grey.shade500,
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w700,
                            height:height*0.0015),
                      ),
                    ),
                    SizedBox(height: height*0.026,),
                    Container(
                      height: height*0.077,
                      width: width*0.86,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Book Now",
                            style: TextStyle(
                              // color: Color(0xff8B5F9C),
                                color: Colors.white,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(width: width*0.04,),
                          Icon(
                            Icons.near_me_outlined,
                            size:25.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
