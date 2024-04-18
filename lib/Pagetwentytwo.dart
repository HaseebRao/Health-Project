import 'package:flutter/material.dart';
import 'package:health/Pagetwentythree.dart';
class Pagetwentytwo extends StatelessWidget {
  const Pagetwentytwo({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body: Column(
crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height*0.382,
              width: width,
              decoration: BoxDecoration(
                color: Colors. blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(left:width*0.05,right: width*0.04, top: height*0.01),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.segment,
                          size:28.0,
                          color: Colors.white,
                        ),
                        SizedBox(width: width*0.69),
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 31.0,bottom:0,right: 6,top: 38),
                            child: Container(
                              height: height*0.001,
                              width: width*0.001,
                              decoration: BoxDecoration(
                                color:Colors.greenAccent,
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.034,),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pagetwentythree()),
                            );
                          },
                            child: Text(
                              'Good Evening',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.028,
                                  fontWeight: FontWeight.w600,
                                  height: 0),
                            ),
                          ),
                          Text(
                            'Alexa',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.028,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                          SizedBox(height: height*0.02,),
                          Text(
                            'Your target fot today is to keep positive',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                          Text(
                            'mindset and to complete the tasks,',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.014,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                          SizedBox(height: height*0.04,),
                          Row(
                            children: [
                              Container(
                                height: height*0.03,
                                width: width*0.24,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,

                                ),
                                child: Center(
                                  child: Text(
                                    'Alex clear',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.blue.shade700,
                                        fontSize: height * 0.012,
                                        fontWeight: FontWeight.w500,
                                        height: 0),
                                  ),
                                ),
                              ),
                              SizedBox(width: width*0.03,),
                              Container(
                                height: height*0.032,
                                width: width*0.24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white, // Change this to the desired border color
                                    width: 1.0, // Change this to the desired border width
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    'Alex clear',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: height * 0.012,
                                        fontWeight: FontWeight.w500,
                                        height: 0),
                                  ),
                                ),
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
            Padding(
              padding:  EdgeInsets.only(left: width*0.08,top: height*0.023),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What are you doing today?',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: height * 0.0165,
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  SizedBox(height: height*0.035,),
                  Row(
                    children: [
                      Icon(
                        Icons.cloud_circle_sharp,
                        size:60.0,
                        color: Colors.blueGrey.withOpacity(0.5),
                      ),
                      SizedBox(width: width*0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alera',
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(height: height*0.002,),
                          Text(
                            'Connection Checkout',
                            style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: height * 0.0155,
                                fontWeight: FontWeight.w700,
                                height: 0),
                          ),
                          SizedBox(height: height*0.005,),
                          Text(
                            'Testing Completed Successfully',
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                        ],
                      ),
                      SizedBox(width: width*0.15),
                      Container(
                        height: height*0.029,
                        width: width*0.125,
                        decoration: BoxDecoration(
                          color: Colors. blue,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child:  Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.034,),
                  Container(
                    height: height*0.001,
                    width: width*0.845,
                    color: Colors.blueGrey.withOpacity(0.3),
                  ),
                  SizedBox(height: height*0.02,),
                  Row(
                    children: [
                      Icon(
                        Icons.icecream_outlined,
                        size:60.0,
                        color: Colors.blueGrey.withOpacity(0.5),
                      ),
                      SizedBox(width: width*0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alera',
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(height: height*0.002,),
                          Text(
                            'Connection Checkout',
                            style: TextStyle(
                                color: Colors.blue.shade800,
                                fontSize: height * 0.0155,
                                fontWeight: FontWeight.w700,
                                height: 0),
                          ),
                          SizedBox(height: height*0.005,),
                          Text(
                            'Testing Completed Successfully',
                            style: TextStyle(
                                color: Colors.blueGrey.withOpacity(0.5),
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                        ],
                      ),
                      SizedBox(width: width*0.15),
                      Container(
                        height: height*0.029,
                        width: width*0.125,
                        decoration: BoxDecoration(
                            color: Colors. blue,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child:  Center(
                          child: Text(
                            'View',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.0121,
                                fontWeight: FontWeight.w600,
                                height: 0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.034,),
                  Container(
                    height: height*0.001,
                    width: width*0.845,
                    color: Colors.blueGrey.withOpacity(0.3),
                  ),
                  SizedBox(height: height*0.038,),
                  Text(
                    'View Connected Remote Devices',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontSize: height * 0.0165,
                        fontWeight: FontWeight.w700,
                        height: 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: SizedBox(
                      height: height * 0.12,
                      width: width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18),
                                  child: Container(
                                    height: height * 0.11,
                                    width: width * 0.75,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.05),
                                          spreadRadius: 5,
                                          blurRadius: 7,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: width * 0.22,
                                          height: height * 0.1,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/rebote.jpg'),
                                              // Asset image path
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: height*0.02,left: width*0.015),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Alera Remote',
                                                style: TextStyle(
                                                    color: Colors.blueGrey.withOpacity(0.5),
                                                    fontSize: height * 0.0121,
                                                    fontWeight: FontWeight.w500,
                                                    height: 0),
                                              ),
                                              SizedBox(height: height*0.004,),
                                              Text(
                                                'Intelect Alexa',
                                                style: TextStyle(
                                                    color: Colors.blue.shade800,
                                                    fontSize: height * 0.0135,
                                                    fontWeight: FontWeight.w700,
                                                    height: 0),
                                              ),
                                              SizedBox(height: height*0.004,),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size:12.0,
                                                    color: Colors.redAccent,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size:12.0,
                                                    color: Colors.redAccent,
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size:12.0,
                                                    color: Colors.redAccent,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_purple500_outlined,
                                                    size:12.0,
                                                    color: Colors.redAccent,
                                                  ),
                                                  Icon(
                                                    Icons.star_border_purple500_outlined,
                                                    size:12.0,
                                                    color: Colors.redAccent,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: width*0.17,),
                                        Container(
                                          height: height*0.026,
                                          width: width*0.12,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.blue, // Change this to the desired border color
                                              width: 1.0, // Change this to the desired border width
                                            ),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Book',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: height * 0.01,
                                                  fontWeight: FontWeight.w400,
                                                  height: 0),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                  Container(
                    height: height*0.06,
                    width: width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.home,
                          size:25.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.search_rounded,
                          size:25.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.favorite,
                          size:25.0,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.person,
                          size:25.0,
                          color: Colors.blue,
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
    );
  }
}
