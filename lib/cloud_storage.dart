import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CloudStorage extends StatelessWidget {
  const CloudStorage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF8F1F3),
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(Icons.pages_rounded, size: 30),
          Icon(Icons.image, size: 30),
          Icon(Icons.call_split, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        backgroundColor: const Color(0xffF7F8FA),
        buttonBackgroundColor: const Color(0xff6E79F2),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.05, bottom: height * 0.025),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's Explore Files",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.027,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                    Container(
                      height: height * 0.064,
                      width: width * 0.123,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: Icon(
                        Icons.sort,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    height: height * 0.064,
                    width: width * 0.123,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Icon(
                      Icons.tune,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Container(
                    width: width * 0.74,
                    height: height * 0.075,
                    decoration: const BoxDecoration(),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      enabled: true,
                      showCursor: true,
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Color(0xff7483F4),
                          size: height * 0.038,
                        ),
                        fillColor: Colors.white,
                        hintText: 'Search folders,file...',
                        hintStyle: TextStyle(
                          fontSize: height * 0.018,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.025,
              ),
              SizedBox(
                width: width,
                height: height * 0.185,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Container(
                          width: width * 0.37,
                          height: height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.edit_document,
                                  size: height * 0.05,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  'Documents',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.02,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  '25.61 GB',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.5),
                                      fontSize: height * 0.016,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.01, bottom: height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent File',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.026,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Color(0xff7788F5),
                          fontSize: height * 0.016,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height * 0.18,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Container(
                          width: width * 0.36,
                          height: height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Colors.white,
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/3049413/pexels-photo-3049413.jpeg?auto=compress&cs=tinysrgb&w=400'),
                                fit: BoxFit.cover),
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: height * 0.05,
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.012),
                child: Text(
                  'My Folder',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: height * 0.026,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                height: height * 0.18,
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: height * 0.02),
                        child: Container(
                          width: width,
                          height: height * 0.11,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.03),
                            child: Row(
                              children: [
                                Container(
                                  width: width * 0.1,
                                  height: height * 0.1,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Center(
                                      child: Icon(
                                    Icons.image,
                                    color: Color(0xff58D0F0),
                                    size: height * 0.075,
                                  )),
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          'My Favourite Pictures',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.12,
                                        ),
                                        Text(
                                          '506 images',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: height * 0.015,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: height * 0.012,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '45.02 GB',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: height * 0.015,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width * 0.08,
                                        ),
                                        Container(
                                          width: width * 0.45,
                                          height: height * 0.0115,
                                          child: Transform.rotate(
                                            angle: -3.14,
                                            child: LinearProgressIndicator(
                                              value: 0.4,
                                              backgroundColor: Colors.blue,
                                              color: Color(0xffEFF3F8),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(12)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
