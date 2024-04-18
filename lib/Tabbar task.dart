import 'package:flutter/material.dart';
class Tabbartask extends StatefulWidget {
  const Tabbartask({super.key});
  @override
  State<Tabbartask> createState() => _TabbartaskState();
}
class _TabbartaskState extends State<Tabbartask>with TickerProviderStateMixin {
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
    rooti( data: "Slade vete type canade", number: "123g", ),
  ];
  Widget build(BuildContext context) {
    var size = MediaQuery. of (context).size;
    double height = size .height;
    double width = size .width;
    TabController tabController=TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: height*0.395,
              width: width,
              child: Stack(
                children: [
                  Container(
                    width: width,
                    height: height*0.36,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      image: DecorationImage(
                        image: AssetImage('assets/images/wooood.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0), // Adjust the value as needed
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: height*0.36,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/eee.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(100.0), // Adjust the value as needed
                      ),
                    ),
                  ),
                  Positioned(top: height*0.05,left: width*0.05,
                    child: Row(
                      children: [
                        Container(
                          height: height*0.058,
                          width: width*0.12,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "<",
                              style: TextStyle(
                                  color: Colors.teal,
                                  fontSize: height * 0.035,
                                  fontWeight: FontWeight.w500,
                                  height: 0),
                            ),
                          ),
                        ),
                        SizedBox(width: width*0.30,),
                        Container(
                            height: height*0.06,
                            width: width*0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: width*0.03),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.ac_unit_sharp,
                                    color: Colors.teal,
                                    size: 23,
                                  ),
                                  Text(
                                    "10 MIN",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w800,
                                        height: 0),
                                  ),
                                  Icon(
                                    Icons.add_business_outlined,
                                    color: Colors.teal,
                                    size: 23,
                                  ),
                                  Text(
                                    "45 MIN",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w800,
                                        height: 0),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  Positioned(top: height*0.328,left: width*0.05,
                    child: Container(
                      height: height*0.064,
                      width: width*0.59,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Center(
                        child: Text(
                          "Wrap poulet",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.023,
                              fontWeight: FontWeight.w600,
                              height: 0),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.022,),
            Padding(
              padding:  EdgeInsets.only(left: width*0.04, right: width*0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: height*0.044,
                        width: width*0.26,
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            "389 kcol",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.06,),
                      Text(
                        "G60%     P20%    L20%",
                        style: TextStyle(
                            color: Colors.deepOrangeAccent.withOpacity(0.8),
                            fontSize: height * 0.018,
                            fontWeight: FontWeight.w500,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 1,
                    child: Container(
                      height: height*0.062,
                      decoration: BoxDecoration(
                        // color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child:TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.lightGreen.withOpacity(0.7),

                        ),
                        controller: tabController,
                        // isScrollable: true,
                        labelPadding: EdgeInsets.symmetric(horizontal: 2),
                        tabs: [
                          Tab( child:   Center(
                            child: Text(
                              "    INGREDIENTS     ",
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: height * 0.018,
                                  fontWeight: FontWeight.w600,
                                  height: 0),
                            ),
                          ),),
                          Tab( child:  Center(
                            child: Text(
                              "    PREPARATION    ",
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontSize: height * 0.016,
                                  fontWeight: FontWeight.w600,
                                  height: 0),
                            ),
                          ),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: height*0.01,),
                  SizedBox(
                    height: height*0.39,
                    child: TabBarView(
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
                        Text(
                          "This Chicken Shawarma recipe is going to knock your socks off! Just a handful of every day spices makes an incredible Chicken Shawarma marinade that infuses the chicken with exotic Middle Eastern flavours. The smell when this is cooking is insane!This is one of my signature recipes that will be very familiar to all my friends because I make this so often. It’s off the charts for effort vs output: just a handful of everyday spices, garlic, a splash of lemon and olive oil transforms into the most incredible flavour.When this chicken is cooking, the smell is incredible. In fact, it’s how I met most of my neighbours when I lived in a townhouse complex, random people I had never met before popping their head over the fence wanting to know what on earth I was making. They were elated when I handed out samples!",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: height * 0.016,
                              fontWeight: FontWeight.w600,
                              height: 0),
                        ),
                      ],
                    ),
                  )
                ],
             ),
            )
          ],
        ),
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
