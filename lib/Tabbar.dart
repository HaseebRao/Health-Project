import 'package:flutter/material.dart';
class newpage extends StatefulWidget {
  const newpage({super.key});

  @override
  State<newpage> createState() => _newpageState();
}

class _newpageState extends State<newpage>with TickerProviderStateMixin{
  @override
  List<rooti> interdata =[
    rooti( data: "Fouille de tortillas", number: "1",),
    rooti( data: "Blanc de poulet", number: "87g",),
    rooti( data: "Chapelure", number: "43g",),
    rooti( data: "Paprika", number: "3g",),
    rooti( data: "Citron vert", number: "4ml",),
    rooti( data: "2c .a coupe d'hulie", number: "2cas",),
    rooti( data: "oeufs", number: "2",),
    rooti( data: "Chorninous", number: "5g",),
    rooti( data: "Avocat", number: "21g",),
    rooti( data: "Tomate", number: "123g",),
    rooti( data: "Ognovous vounous", number: "54g",),
    rooti( data: "Slade vete type canade", number: "123g",),
  ];
  Widget build(BuildContext context) {
    TabController tabController=TabController(length: 2, vsync: this);
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    return Scaffold(
      body: Column(
        children: [
         Text("good morning", style: TextStyle(color: Colors.orange,fontSize: height*0.05),),
         Column(
           children: [
             Card(
               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
               elevation: 5,
               child: Container(
                 decoration: BoxDecoration(
                   color: Colors.black.withOpacity(0.1),
                   borderRadius: BorderRadius.circular(12),
                 ),
                 child:TabBar(
                   indicator: BoxDecoration(
                     borderRadius: BorderRadius.circular(12),
                     color: Colors.lightGreen.withOpacity(0.7),

                   ),
                   controller: tabController,
                   isScrollable: true,
                   labelPadding: EdgeInsets.symmetric(horizontal: 30),
                   tabs: [
                     Tab( child:   Text(
                       "    INGREDIENTS    ",
                       style: TextStyle(
                           color: Colors.indigo,
                           fontSize: height * 0.018,
                           fontWeight: FontWeight.w600,
                           height: 0),
                     ),),
                     Tab( child:  Text(
                       "    PREPARATION    ",
                       style: TextStyle(
                           color: Colors.indigo,
                           fontSize: height * 0.016,
                           fontWeight: FontWeight.w600,
                           height: 0),
                     ),),
                   ],
                 ),
               ),
             ),
             Expanded(child: TabBarView(
               controller: tabController,
               children: [
                 ListView.builder(
                     scrollDirection: Axis.vertical,
                     itemCount:12 ,
                     itemBuilder: (context, index){
                       return Padding(
                         padding: EdgeInsets.only(bottom: height*0.01),
                         child: Container(
                             height: height*0.03,
                             width: width*0.5,
                             decoration: BoxDecoration(
                               // color: Colors.tealAccent,
                             ),
                             child: Row(

                               children: [
                                 Text(
                                   interdata[index].data,
                                   style: TextStyle(
                                       color: Colors.indigo,
                                       fontSize: height * 0.017,
                                       fontWeight: FontWeight.w500,
                                       height: 0),
                                 ),
                                 SizedBox(width: width*0.04,),
                                 Expanded(
                                   child: Container(
                                     height: height*0.001,
                                     width:width,
                                     color:Colors.black.withOpacity(0.1),
                                   ),
                                 ),
                                 // Spacer(),
                                 SizedBox(width: width*0.05,),
                                 Text(
                                   interdata[index].number,
                                   style: TextStyle(
                                       color: Colors.indigo,
                                       fontSize: height * 0.017,
                                       fontWeight: FontWeight.w500,
                                       height: 0),
                                 ),
                               ],
                             )
                         ),
                       );
                     }),
                 Text("good morning", style: TextStyle(color: Colors.orange,fontSize: height*0.05),),

               ],
             ))
           ],
         )
        ],
      ),
    );
  }
}
class rooti{
  String data;
  String number;

  rooti({
    required this.data, required this.number,
  });
}