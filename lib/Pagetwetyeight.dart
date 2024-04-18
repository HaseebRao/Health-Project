import 'package:flutter/material.dart';
class Pagetwentyeight extends StatefulWidget {
  const Pagetwentyeight({super.key});
  @override
  State<Pagetwentyeight> createState() => _PagetwentyeightState();
}
class _PagetwentyeightState extends State<Pagetwentyeight> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  bool isSlected=false;
  bool isTab=false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(left: width*0.075,top: height*0.03,right: width*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_outlined,
                    size:30.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: width*0.03,),
                  Text(
                    'Details',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.039,
                        fontWeight: FontWeight.w900,
                        height: 0),
                  ),
                  SizedBox(width: width*0.36,),
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(49.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/pink.jpg'),
                        // Asset image path
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: width*0.065,top: height*0.07),
                child: Container(
                  height: height*0.5,
                  width: width*0.72,
                  decoration: BoxDecoration(
                    color: Colors.cyanAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: SizedBox(
                    height: height,
                    width: width*0.72,
                    child: Stack(
                      children: [
                        Positioned(left: width*0.04,top: height*0.02,
                          child: Text(
                            'Iphone 11 \npro',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.037,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),

                        ),
                        Positioned(left: width*0.135, top: height*0.21,
                          child: Container(
                            height: height*0.29,
                            width: width*0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30), // Adjust the radius as needed
                                topRight: Radius.circular(30), // Adjust the radius as needed
                              ),
                            ),
                          ),
                        ),
                        Positioned(left: width*0.14,top: height*0.115,
                          child: Container(
                            width: width * 0.44,
                            height: height * 0.23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/iphone.jpg'),
                                // Asset image path
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Positioned(left: width*0.24,top: height*0.339,
                          child: Text(
                            '\$849',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.043,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                        ),
                        Positioned(top: height*0.418,left: width*0.17,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: _decrementCounter,
                                    tooltip: 'Decrement',
                                    icon: Icon(Icons.remove,size: 30,weight: 40,color: Colors.black,),
                                  ),
                                  Container(
                                    height: 52,
                                    width: 58,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$_counter',
                                        style: TextStyle(fontSize:17,color: Colors.white,fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ),

                                  IconButton(
                                    onPressed: _incrementCounter,
                                    tooltip: 'Increment',
                                    icon: Icon(Icons.add,size: 30,weight: 40,color: Colors.black,),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: height*0.035,),
              SizedBox(
                height: height*0.07,
                width: width*0.87,
                child: Text(
                  'IPhone 11 Pro is Powered by a hexa-core Apple A13 Bionic Vprocessor, it comes with 4GB of RAM. The  IPhone 11 Pro runs iOS 13.',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.0159,
                      fontWeight: FontWeight.w600,
                      height:height*0.0018),
                ),
              ),
              SizedBox(height: height*0.07,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isSlected=!isSlected;
                      });
                    },
                    child: Container(
                        height: height*0.085,
                      width: width*0.36,
                      decoration: BoxDecoration(
                        color: isSlected?Colors.black:Colors.white,
                        border: Border.all(
                          width:width*0.003,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(16),
                        // color: Colors.black,
                      ),
                      child:Center(
                        child: Text(
                          'Add to card',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: isSlected?Colors.white:Colors.black,
                              fontSize: height * 0.021,
                              fontWeight: FontWeight.w800,
                              height: 0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: width*0.08,),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        isTab=!isTab;
                      });
                    },
                    child: Container(
                      height: height*0.085,
                      width: width*0.36,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width:width*0.003,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(16),
                       color: isTab?Colors.black:Colors.white,
                      ),
                      child:Center(
                        child: Text(
                          'Buy Now',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: isTab?Colors.white:Colors.black,
                              fontSize: height * 0.022,
                              fontWeight: FontWeight.w800,
                              height: 0),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
