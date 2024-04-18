import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:health/pagefourtytwo.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
class pagefourtyone extends StatefulWidget {
   pagefourtyone({super.key});

  @override
  State<pagefourtyone> createState() => _pagefourtyoneState();
}
class _pagefourtyoneState extends State<pagefourtyone> with TickerProviderStateMixin{
  int _onTab=0;
  List<String> text = [
    'Sleep',
    "Education",
    'Work',
    'Workout',
    'Mobile',
  ];
  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData('Jan', 35),
      _SalesData('Feb', 28),
      _SalesData('Mar', 34),
      _SalesData('Apr', 32),
      _SalesData('May', 40)
    ];
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    TabController tabController=TabController(length: 2, vsync: this);
    TabController Controller=TabController(length: 3, vsync: this);
    return Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
      child: Padding(
        padding:  EdgeInsets.only(top: height*0.07,left: width*0.035,right: width*0.035,),
        child: Column(
          children: [
            Row(

              children: [
                SizedBox(width: width*0.25,),
                Text(
                  "AI Chart Generate",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: height * 0.026,
                      fontWeight: FontWeight.w400,
                      height: 0),
                ),
                SizedBox(width: width*0.13,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>Pagefourtytwo()),
                    );
                  },
                  child: Container(
                    height: height*0.035,
                    width: width*0.09,
                    // color: Colors.yellow,
                    // color: Colors.yellow,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size:21.0,
                      color:Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height*0.017,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              elevation: 2,
              color: Colors.black,
              child: Container(
                height: height*0.053,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white,width: height*0.0003)
                ),
                child:TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(


        // border: Border.all(color: Colors.white),

                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,

                  ),
                  controller: tabController,
                  // isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 001),
                  tabs: [
                    Tab( child:   Center(
                      child: Text(
                        "    Option 1    ",
                        style: TextStyle(

                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ),),
                    Tab( child:  Center(
                      child: Text(
                        "    Option 2    ",
                        style: TextStyle(
                            fontSize: height * 0.016,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.only(left: width*0.02,right: width*0.02),
              child: SizedBox(
                height: height*0.39,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SfCartesianChart(
                        crosshairBehavior: CrosshairBehavior(lineColor: Colors.green,
                        ),
                        primaryXAxis: CategoryAxis(),
                        legend: Legend(isVisible: true,),

                        tooltipBehavior: TooltipBehavior(enable: true,color: Colors.red),

                        series: <CartesianSeries<_SalesData, String>>[
                          LineSeries<_SalesData, String>(

                              dataSource: data,
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) => sales.sales,color: Colors.red,
                              name: 'Sales',
                              dataLabelSettings: DataLabelSettings(isVisible: true,color: Colors.red,borderColor: Colors.red))
                        ]),
                    Container(
                      height: height*0.4,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/shaheeen.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
           SizedBox(height: height*0.007,),
           SizedBox(
             height: height*0.02,
             child: ListView.builder(
                 scrollDirection: Axis.horizontal,
                 itemCount: 4,
                 itemBuilder: (context, index){
                   return Padding(
                     padding:  EdgeInsets.only(right: width*0.05),
                     child: GestureDetector(
                       onTap: (){
                         setState(() {
                       _onTab=index;

                         });
                       },
                       child: Container(
                           height: height*0.02,
                           width: width*0.2,
                           decoration: BoxDecoration(
                             // co  lor: Colors.pinkAccent,
                           ),
                           child: Row(
                             children: [
                               Icon(
                                 Icons.star,
                                 size:14.0,
                                 color:  _onTab==index?Colors.red:Colors.white,
                               ),
                               SizedBox(width: width*0.015,),
                               Text(
                                 text[index],
                                 style: TextStyle(
                                     color:  _onTab==index?Colors.red:Colors.white,
                                     fontSize: height * 0.014,
                                     fontWeight: FontWeight.w400,
                                     height: 0),
                               ),
                             ],
                           )
                       ),
                     ),
                   );

                   //   Text(


                 }),
           ),
            SizedBox(height: height*0.02,),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              elevation: 2,
              color: Colors.black,
              child: Container(
                height: height*0.053,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(18),

                ),
                child:TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor:  Colors.white.withOpacity(0.2),
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  controller: Controller,
                  // isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 5),
                  tabs: [
                    Tab( child:   Center(
                      child: Row(
                        children: [
                          Container(
                            height: height*0.045,
                            width: width*0.085,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Colors.white.withOpacity(0.2),width: height*0.0025)
                            ),
                            child: Icon(
                              Icons.adb_rounded,
                              size:21.0,

                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          Text(
                            "My SQL",
                            style: TextStyle(
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                        ],
                      ),
                    ),),
                    Tab( child:  Center(
                      child: Row(
                        children: [
                          Container(
                            height: height*0.045,
                            width: width*0.085,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Colors.white.withOpacity(0.2),width: height*0.0025)
                            ),
                            child: Icon(
                              Icons.ac_unit_sharp,
                              size:21.0,
                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          Text(
                            "Python",
                            style: TextStyle(
                                fontSize: height * 0.016,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                        ],
                      ),
                    ),),
                    Tab( child:  Center(
                      child: Row(
                        children: [
                          Container(
                            height: height*0.045,
                            width: width*0.085,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                                border: Border.all(color: Colors.white.withOpacity(0.2),width: height*0.0025)
                            ),
                            child: Icon(
                              Icons.three_k_plus_outlined,
                              size:21.0,

                            ),
                          ),
                          SizedBox(width: width*0.02,),
                          Text(
                            "CSS",
                            style: TextStyle(
                                fontSize: height * 0.016,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                        ],
                      ),
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: height*0.01,),
            Padding(
              padding:  EdgeInsets.only(left: width*.02,right: width*0.02),
              child: SizedBox(
                height: height*0.28,
                child: TabBarView(
                  controller: Controller,
                  children: [
                    Container(
                      height: height*0.4,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/sql.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: height*0.4,
                      width: width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/pythoon.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      "Cascading Style Sheets (CSS) is a style sheet language used for specifying the presentation and styling of a document written in a markup language such as HTML or XML (including XML dialects such as SVG, MathML or XHTML).\nCascading Style Sheets (CSS) is a style sheet language used for specifying the presentation and styling of a document written in a markup language such as HTML or XML (including XML dialects such as SVG, MathML or XHTML).\nCascading Style Sheets (CSS) is a style sheet language used for specifying the presentation and styling of a document written in a markup language such as ",
                      style: TextStyle(
                        color: Colors.red,
                          fontSize: height * 0.016,
                          fontWeight: FontWeight.w400,
                          height: 0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      ),
        ],
      ),
    );
  }
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}