import 'package:flutter/material.dart';
import 'package:health/Pagetwentyseven.dart';
class Pagetwentysix extends StatelessWidget {
  const Pagetwentysix({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Padding(
        padding:  EdgeInsets.only(top: height*0.04),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.only(bottom:height*0.27,left: width*0.07),
                  child: Icon(
                    Icons.arrow_back,
                    size:30.0,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: height*0.35,
                  width: width*0.65,
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage('assets/images/gamla.jpg'),
                      // Asset image path
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom:height*0.25,left: width*0.03),
                  child: Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(49.0),

                    ),
                    child:Icon(
                      Icons.favorite,
                      size:24.0,
                      color: Colors.green,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: height*0.02,),
            Container(
              height: height*0.59,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                  // Adjust the value to control the roundness
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: height*0.075,left: width*0.09,right: width*0.07),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Pagetwentyseven ()),
                            );
                          },
                          child: Text(
                            "Astrophytum",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.030,
                                fontWeight: FontWeight.w700,
                                height: 0),
                          ),
                        ),
                        SizedBox(width: width*0.22),
                        Text(
                          '\$',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.027,
                              fontWeight: FontWeight.w400,
                              height: 0),
                        ),
                        Text(
                          '312',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.029,
                              fontWeight: FontWeight.w900,
                              height: 0),
                        ),
                        Text(
                          '.00',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height * 0.019,
                              fontWeight: FontWeight.w600,
                              height: 0),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.03,),
                    Container(
                      height: height*0.031,
                      width: width*0.22,
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        border: Border.all(
                          color: Colors.black.withOpacity(0.2), // Change this to the desired border color
                          width: 1.0, // Change this to the desired border width
                        ),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.only(left:width*0.025,right: width*0.025),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 0.1),
                              child:  Text(
                                '-',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w400,
                                    height: 0),
                              ),
                            ),
                            Text(
                              '1',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w600,
                                  height: 0),
                            ),
                            Text(
                              '+',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: height * 0.02,
                                  fontWeight: FontWeight.w400,
                                  height: 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height*0.04,),
                    Text(
                      'SELECT POT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.013,
                          fontWeight: FontWeight.w800,
                          height: 0),
                    ),
                    SizedBox(height: height*0.015,),
                    Row(
                      children: [
                        Container(
                          height: height*0.08,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/cupb.jpg'),
                              // Asset image path
                              fit: BoxFit.contain,
                            ),

                          ),
                        ),
                        SizedBox(width: width*0.065,),
                        Container(
                          height: height*0.08,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/ice.jpg'),
                              // Asset image path
                              fit: BoxFit.contain,
                            ),

                          ),
                        ),
                        SizedBox(width: width*0.065,),
                        Container(
                          height: height*0.08,
                          width: width*0.17,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage('assets/images/cup.jpg'),
                              // Asset image path
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height*0.04,),
                    Text(
                      'DESCRIPTION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.013,
                          fontWeight: FontWeight.w800,
                          height: 0),
                    ),
                    SizedBox(height: height*0.013,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'The species of the genus Astrophytum usually grow',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.0145,
                              fontWeight: FontWeight.w700,
                              height: 0),
                        ),
                        SizedBox(height: height*0.005,),
                        Text(
                          'individually with spherical & columnar green shoots',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.3),
                              fontSize: height * 0.0145,
                              fontWeight: FontWeight.w700,
                              height: 0),
                        ),
                        SizedBox(height: height*0.005,),
                        Row(
                          children: [
                            Text(
                              'and reach heights of up to 1.5 meters...',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.3),
                                  fontSize: height * 0.0145,
                                  fontWeight: FontWeight.w700,
                                  height: 0),
                            ),
                            Column(
                              children: [
                                Text(
                                  'detail',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w800,
                                      height: 0),
                                ),
                                Container(
                                  height: height*0.0009,
                                  width: width*0.08,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                    SizedBox(height: height*0.045,),
                    Container(
                      height: height*0.073,
                      width: width*0.85,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(9)
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: width*0.22,),
                          Icon(

                            Icons.lock_open,
                            size:30.0,
                            color: Colors.white,
                          ),
                          SizedBox(width: width*0.05,),
                          Text(
                            'Add To Card',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: height * 0.018,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
