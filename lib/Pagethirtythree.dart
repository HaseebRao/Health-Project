import 'dart:ffi';
import 'package:flutter/material.dart';
class Pagethirtythree extends StatefulWidget {
  const Pagethirtythree({super.key});
  @override
  State<Pagethirtythree> createState() => _PagethirtythreeState();
}
class _PagethirtythreeState extends State<Pagethirtythree> {
  @override
  List<String> texts = [
    '40',
    "41",
    '42.5',
    '43',
    "44",
    '44.5',
    '45',
  ];
  List<String>call= [
    'Description',
    'Product detail',
  ];
  List<Names> dataList = [
    Names(sizee:'22', dollare: '\$199.99', pkre: "2000PKR", colore: "BlueNB", imagee:  "assets/images/blueN.jpg",),
    Names(sizee:'28',dollare:'\$377.77', pkre: "2200PKR",colore: "GreenNB",imagee: "assets/images/greenN.jpg",),
    Names(sizee:'32', dollare:'\$377.77',pkre: "2500PKR",colore: "WhiteNB",imagee: "assets/images/whiteN.jpg",),
    Names(sizee:'36',dollare:'\$466.66', pkre: "2700PKR",colore: "CreamNB",imagee:  "assets/images/nb2.jpg",),
    Names(sizee:'38',dollare:'\$544.44',pkre: "3000PKR", colore: "BlackNB",imagee:  "assets/images/blackN.jpg",),
    Names(sizee:'40', dollare:'\$623.33',pkre: "3200PKR",colore: "BrownNB", imagee:  "assets/images/yellowN.jpg",),
    Names(sizee:'42',dollare:'\$377.77',pkre: "3500PKR",colore: "WhiteNB",imagee: "assets/images/whiteN.jpg",),
  ];
  List<Hamza> dataRight = [
    Hamza(call: 'Whenever you are competing againast the farrin or a particularly typing Gay. the new balance 61Vol is your best weapon. C-CAP cushing provide Gnderfoot support while the stylish 2000s trial-inspared design and Together nubusk and mosh upper on this mans snokers delivers wranstaly And comfort '),
    Hamza(call:'Vhenever you are competing againast the farrin or a particularly typing day. the new balance 61Vol is your best weapon. C-CAP cushing provide underfoot support while the stylish 2000s trial-inspared design and together nubusk and mosh upper on this mans snokers delivers wranstaly and comfort ',),
  ];
  List<Haseeb>dataSize= [
    Haseeb(size:'22', pkr: "2000PKR", dollar:'\$199.99', image:  "assets/images/blueN.jpg",),
    Haseeb(size:'28', pkr: "2200PKR",dollar:'\$288.88',image: "assets/images/greenN.jpg",),
    Haseeb(size:'32', pkr: "2500PKR",dollar:'\$377.77',image: "assets/images/whiteN.jpg",),
    Haseeb(size:'36', pkr: "2700PKR",dollar:'\$466.66',image:  "assets/images/nb2.jpg",),
    Haseeb(size:'38', pkr: "3000PKR",dollar:'\$544.44',image:  "assets/images/blackN.jpg",),
    Haseeb(size:'40', pkr: "3200PKR",dollar:'\$633.33', image:  "assets/images/yellowN.jpg",),
    Haseeb(size:'42', pkr: "3500PKR",dollar:'\$623.33',image: "assets/images/whiteN.jpg",),
  ];
  int _isSlected=-1;
 int _slected=0;
 int _isPress=0;
 int _onTab=0;
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height*0.567,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(43), // Makes the bottom left corner circular
                bottomRight: Radius.circular(43), // Makes the bottom right corner circular
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding:  EdgeInsets.only(left: width*0.085,top: height*0.042,right: width*0.085),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height*0.053,
                        width: width*0.115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: height*0.053,
                        width: width*0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: AssetImage('assets/images/nbe.jpg'),
                            // Asset image path
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: height*0.053,
                        width: width*0.117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: width*0.013,),
                            Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 17.0,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(right:width*0.001),
                              child: Text(
                                ' $counter',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.017,
                                    fontWeight: FontWeight.w800,
                                    height: 0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.023,),
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.03),
                        child: Container(
                          height: height*0.24,
                          width: width*0.62,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                              image: AssetImage(dataList[_isPress].imagee),
                              fit: BoxFit.cover,
                              // Image fit property
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width*0.05,),
                      Column(
                        children: [
                          SizedBox(
                            height: height * 0.285,
                            width: width*0.16,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: 7,
                                // physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding:  EdgeInsets.only(bottom: height*0.011,),
                                    child: GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          _isPress=index;
                                        });
                                      },
                                      child: Container(
                                        height: height*0.075,
                                        width: width*0.08,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          image: DecorationImage(
                                            image: AssetImage(dataList[index].imagee),
                                            // Asset image path
                                            fit: BoxFit.fill,
                                          ),
                                          // color: Colors.yellowAccent,
                                          border: Border.all(color: Colors.black,width: width*0.001),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.073,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dataSize[_isPress].pkr,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.0221,
                                fontWeight: FontWeight.w900,
                                height: 0),
                          ),
                          Text(
                            dataList[_isPress].colore,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.016,
                                fontWeight: FontWeight.w400,
                                height: 0),
                          ),
                        ],
                      ),
                      SizedBox(width: width*0.25,),
                      Text(
                        dataSize[_isPress].dollar,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.044,
                            fontWeight: FontWeight.w900,
                            height: 0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        Padding(
          padding:  EdgeInsets.only(left: width*0.07,right: width*0.07,top: height*0.015),
          child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Something not available? set a back in stock alert.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.015,
                    fontWeight: FontWeight.w500,
                    height: 0),
              ),
              SizedBox(height: height*0.035,),
              Row(
                children: [
                  SizedBox(
                    height: height * 0.033,
                    width: width*0.8,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return  GestureDetector(
                            onTap: (){
                              setState(() {
                                _onTab=index;
                              });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: width*0.1),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        call[index],
                                        // 'Description',
                                        style: TextStyle(
                                            color: _onTab==index?Colors.white:Colors.white.withOpacity(0.3),
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w600,
                                            height: 0),
                                      ),
                                      SizedBox(height: height*0.007,),
                                      Container(
                                        height: height*0.002,
                                        width: width*0.08,
                                        color: _onTab==index?Colors.white:Colors.white.withOpacity(0.3),
                                      )
                                    ],
                                  ),
                                ),
                                // Text(
                                //   'Product detail',
                                //   style: TextStyle(
                                //       color: -_onTab==index?Colors.white.withOpacity(0.3):Colors.white,
                                //       fontSize: height * 0.017,
                                //       fontWeight: FontWeight.w600,
                                //       height: 0),
                                // ),

                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              SizedBox(height: height*0.009,),
              SizedBox(
                height: height*0.095,
                width: width,
                child:Text(
                  dataRight[_onTab].call,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: height * 0.0114,
                      fontWeight: FontWeight.w400,
                      height: height*0.0019),
                ),
              ),
              SizedBox(height: height*0.040,),
              Text(
                'Select Size',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: height * 0.021,
                    fontWeight: FontWeight.w600,
                    height: 0),
              ),
              SizedBox(height: height*0.007,),
              Row(
                children: [
                  SizedBox(
                    height: height * 0.057,
                    width: width*0.86,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:  EdgeInsets.only(right: width*0.013),
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isPress=index;
                                });
                              },
                          child: Container(
                                height: height*0.055,
                                width: width*0.112,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: width*0.003),
                                  color:_slected==index?Colors.red:Colors.black,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child:Center(
                                  child: Text(
                                    dataSize[index].size,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.017,
                                        fontWeight: FontWeight.w300,
                                        height: 0),
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
SizedBox(height: height*0.02,),
              Row(
                children: [
                  Container(
                    height: height*0.055,
                    width: width*0.112,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: width*0.003),
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child:Center(
                      child:  Icon(
                        Icons.message,
                        size: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.145,),
                  GestureDetector(
                    onTap: (){
                      incrementCounter();
                    },
                    child: Container(
                      height: height*0.07,
                      width: width*0.6,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white,width: width*0.003),
                        borderRadius: BorderRadius.circular(11),
                      ),
                      child:Center(
                        child:  Text(
                          'Add to bag',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w600,
                              height: 0),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
        ],
      ),
    );
  }
}
class Names{
  String dollare;
  String imagee;
  String colore;
  String pkre;
  String sizee;
  Names({
     required this.imagee, required this. colore,required this.dollare,required this.pkre,required this.sizee,
  });
}
class Hamza{
  String call;
  Hamza({
    required this.call,
});
}
class Haseeb{
  String size;
  String pkr;
  String dollar;
  String image;
  Haseeb({
    required this. size, required this.pkr,required this.dollar,required this.image,
});
}
