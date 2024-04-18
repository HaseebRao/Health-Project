import 'package:flutter/material.dart';
class Pageseventeen extends StatelessWidget {
   Pageseventeen({super.key});
  List<String> image = [
    "assets/images/be.jpg",
    "assets/images/burger.jpg",
    "assets/images/pizza.jpg",
    "assets/images/cup.jpg",
    "assets/images/plate.jpg",
    "assets/images/ege.jpg",
  ];
   List<String> images = [
     "assets/images/mango.jpg",
     "assets/images/mango.jpg",

   ];
   List<String> text = [
     'Burger',
     "Frias",
     'Pizza',
     'Plate',
     'Eggfri',
     'Tea',
   ];
   List<Color> colors = [
     Colors.red,
     Colors.green,
     Colors.blue,
     Colors.orange,
     Colors.purple,
     Colors.yellow,
   ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0,left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: height * 0.046,
                    width: width * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.black45.withOpacity(0.1), width: 2.0), // Add border color and width
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                          color: Colors.grey,fontWeight: FontWeight.w300,fontSize: 12,
                        ),
                        prefixIcon: Icon(Icons.search,color: Colors.indigo,),
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.07,),
                  Text(
                    'Inicio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: height * 0.030,
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                  SizedBox(width: width*0.18,),
                  Icon(
                    Icons.add_alert,
                    size:30.0,
                    color: Colors.green,
                  ),
                  SizedBox(width: width*0.01),
                  Icon(
                    Icons.watch_later_outlined,
                    size:30.0,
                    color: Colors.red,
                  ),
                ],
              ),
              SizedBox(height: height*0.04,),
              Container(
                width: width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.04,),
              Row(
                children: [
                  Text(
                    'Explorar Categorias',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w800,
                        height: 0),
                  ),
                  SizedBox(width: width*0.38,),
                  Text(
                    'verb todos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: height * 0.013,
                        fontWeight: FontWeight.w300,
                        height: 0),
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
                               color:   colors[index].withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(15.0),
                                  image: DecorationImage(
                                    image: AssetImage(image[index]),
                                    // Asset image path
                                    fit: BoxFit.fitWidth,
                                    // Image fit property
                                  ),
                                ),
                                // child: Padding(
                                //   padding: const EdgeInsets.only(
                                //       left: 29.0, right: 29, top: 14, bottom: 10),
                                //   child: Container(
                                //     width: width * 0.1,
                                //     height: height * 0.03,
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(5.0),
                                //       image: DecorationImage(
                                //         image: AssetImage(image[index]),
                                //         // Asset image path
                                //         fit: BoxFit.fitWidth,
                                //         // Image fit property
                                //       ),
                                //     ),
                                //
                                //   ),
                                //
                                // ),
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
              SizedBox(height: height*0.05,),
              Row(
                children: [
                  Text(
                    'Productos populares',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w800,
                        height: 0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: SizedBox(
                  height: height * 0.3,
                  width: width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: height * 0.27,
                                width: width * 0.43,
                                decoration: BoxDecoration(
                                  color:   Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.02),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: Offset(0, 3), // changes position of shadow
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(25.0),

                                  // image: DecorationImage(
                                  //   image: AssetImage(image[index]),
                                  //   // Asset image path
                                  //   fit: BoxFit.fitWidth,
                                  //   // Image fit property
                                  // ),
                                ),

                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120,top: 8),
                                      child: Icon(
                                        Icons.favorite_outline,
                                        size:25.0,
                                        color: Colors.black45.withOpacity(0.2),
                                      ),
                                    ),
                                   Padding(
                                     padding: const EdgeInsets.only(top: 10.0,bottom:16),
                                     child: Container(
                                       height: height*0.11,
                                       width: width*0.23,
                                       decoration: BoxDecoration(
                                         color: Colors. white,
                                         borderRadius: BorderRadius.circular(60),
                                         image: DecorationImage(
                                           image: AssetImage(image[index]),
                                           // Asset image path
                                           fit: BoxFit.fitWidth,
                                           // Image fit property
                                         ),
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.blueAccent.withOpacity(0.25),
                                             spreadRadius: 5,
                                             blurRadius: 7,
                                             offset: Offset(0, 3), // changes position of shadow
                                           ),
                                         ],
                                       ),

                                     ),
                                   ),

                                   Padding(
                                     padding: const EdgeInsets.only(top:1.0),
                                     child: Padding(
                                       padding: const EdgeInsets.only(left: 18.0),
                                       child: Column(
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [

                                           Text(
                                             'Pizza Clasica',
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: Colors.grey,
                                                 fontSize: height * 0.018,
                                                 fontWeight: FontWeight.w500,
                                                 height: 0),
                                           ),
                                           SizedBox(height: height*0.001,),
                                           Text(
                                             'Casio edicaso die a case',
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: Colors.grey,
                                                 fontSize: height * 0.011,
                                                 fontWeight: FontWeight.w300,
                                                 height: 0),
                                           ),
                                           SizedBox(height: height*0.007,),

                                           Row(
                                             children: [
                                               Text(
                                                 '\$12.58',
                                                 textAlign: TextAlign.center,
                                                 style: TextStyle(
                                                     color: Colors.indigo,
                                                     fontSize: height * 0.017,
                                                     fontWeight: FontWeight.w600,
                                                     height: 0),
                                               ),
                                               SizedBox(
                                                 width: width*0.2,
                                               ),
                                               Icon(
                                                 Icons.arrow_forward_ios,
                                                 size:17.0,
                                                 color: Colors.indigo,
                                               ),
                                             ],
                                           )
                                         ],
                                       ),
                                     ),
                                   )
                                  ],
                                ),
                                // child: Padding(
                                //   padding: const EdgeInsets.only(
                                //       left: 29.0, right: 29, top: 14, bottom: 10),
                                //   child: Container(
                                //     width: width * 0.1,
                                //     height: height * 0.03,
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(5.0),
                                //       image: DecorationImage(
                                //         image: AssetImage(image[index]),
                                //         // Asset image path
                                //         fit: BoxFit.fitWidth,
                                //         // Image fit property
                                //       ),
                                //     ),
                                //
                                //   ),
                                //
                                // ),
                              ),
                            ),
                          ],
                        );
                      }),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Recomendados',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: height * 0.019,
                        fontWeight: FontWeight.w800,
                        height: 0),
                  ),
                ],
              ),
             SizedBox(
                height: height*0.17,
                width: width,
               child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                   itemCount: 2,
                   itemBuilder:(context,index) {
                   return SizedBox(height: height*0.18,
                     width: width*0.65,
                     child: Stack(
                       children: [
                         Container(
                           height:height*0.14,
                           width: width*0.62,
                           decoration: BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.circular(19),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.grey.withOpacity(0.01),
                                 spreadRadius: 5,
                                 blurRadius: 7,
                                 offset: Offset(0, 3), // changes position of shadow
                               ),
                             ],
                           ),
                           child: Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 8.0),
                                 child: Row(
                                   children: [
                                     SizedBox(width: width*0.28),
                                     Text(
                                       'Notoraiase',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: height * 0.011,
                                           fontWeight: FontWeight.w300,
                                           height: 0),
                                     ),
                                     SizedBox(width: width*0.13,),
                                     Icon(
                                       Icons.favorite,
                                       size:20.0,
                                       color: Colors.red,
                                     ),

                                   ],
                                 ),
                               ),

                               Padding(
                                 padding: const EdgeInsets.only(left: 97.0,top: 14),
                                 child: Column(
                                   children: [
                                     Text(
                                       'Mentiodias Tripoidas',
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.indigo,
                                           fontSize: height * 0.014,
                                           fontWeight: FontWeight.w500,
                                           height: 0),
                                     ),
                                     SizedBox(
                                       height: height*0.002,
                                     ),
                                     Text(
                                       "DioaCasio edicaso die done",
                                       textAlign: TextAlign.center,
                                       style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: height * 0.011,
                                           fontWeight: FontWeight.w300,
                                           height: 0),
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left: 13.0,top: 8),
                                       child: Row(
                                         children: [
                                           Text(
                                             '\$12.58',
                                             textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: Colors.indigo,
                                                 fontSize: height * 0.017,
                                                 fontWeight: FontWeight.w600,
                                                 height: 0),
                                           ),
                                           SizedBox(
                                             width: width*0.16,
                                           ),
                                           Icon(
                                             Icons.arrow_forward_ios,
                                             size:17.0,
                                             color: Colors.indigo,
                                           ),
                                         ],
                                       ),
                                     )

                                   ],
                                 ),
                               ),


                             ],
                           )

                         ),
                         Positioned(top:height*0.005,left: width*0.03,
                           child: Padding(
                             padding: const EdgeInsets.only(left: 0.01),
                             child: Container(
                               height: height*0.18,
                               width: width*0.21,
                               decoration: BoxDecoration(

                                 image: DecorationImage(
                                   image: AssetImage(images[index]),
                                   // Asset image path
                                   fit: BoxFit.cover,
                                   // Image fit property
                                 ),
                               ),
                             ),
                           ),
                         )
                       ],
                     ),
                   );
                   })
              ),
              Container(
                height: height*0.06,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(width: width*0.08,),
                    Icon(
                      Icons.favorite_outline,
                      size:27.0,
                      color: Colors.indigo,
                    ),
                    SizedBox(width: width*0.06,),
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size:27.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: width*0.15,),
                    Container(
                      height: height*0.09,
                      width: width*0.12,
                      decoration: BoxDecoration(
                        color: Colors. blue,
                        borderRadius: BorderRadius.circular(25),

                      ),
                      child:Icon(
                        Icons.gite_sharp,
                        size:27.0,
                        color: Colors.indigo,
                      ),
                    ),
                    SizedBox(width: width*0.15,),
                    Icon(
                      Icons.favorite_outline,
                      size:27.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: width*0.06,),
                    Icon(
                      Icons.person,
                      size:27.0,
                      color: Colors.grey,
                    ),
                  ],
                ),

              )
            ],
          ),
        ),
      ),
    );
  }
}
