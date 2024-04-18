import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health/model.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'controller.dart';

class Health extends StatelessWidget {
  final Controller controller = Get.put(Controller());
  Health({super.key});

  List<Modelclass> contDetails = [
    Modelclass(color: const Color(0xffFF3F6F), title: 'Health tips'),
    Modelclass(color: const Color(0xff6EACFF), title: 'Sport'),
    Modelclass(color: const Color(0xff1DA05A), title: 'Goals'),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: const Color(0xffF7F3F4),
      bottomNavigationBar: Obx(() => SalomonBottomBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: const Color(0xffFF3F6F),
              unselectedColor: const Color(0xffFF3F6F).withOpacity(0.6),
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: const Icon(Icons.favorite_border),
              title: const Text("Likes"),
              selectedColor: const Color(0xffFF3F6F),
              unselectedColor: const Color(0xffFF3F6F).withOpacity(0.6),
            ),

            /// Search
            SalomonBottomBarItem(
              icon: const Icon(Icons.search),
              title: const Text("Search"),
              selectedColor: const Color(0xffFF3F6F),
              unselectedColor: const Color(0xffFF3F6F).withOpacity(0.6),
            ),

            /// Email
            SalomonBottomBarItem(
              icon: const Icon(Icons.email),
              title: const Text("Email"),
              selectedColor: const Color(0xffFF3F6F),
              unselectedColor: const Color(0xffFF3F6F).withOpacity(0.6),
            ),
          ]),),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.055, bottom: height * 0.015),
                child: Text(
                  'Health',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.034,
                      fontWeight: FontWeight.bold,
                      height: 0),
                ),
              ),
              Container(
                width: width,
                height: height * 0.056,
                decoration: const BoxDecoration(),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  enabled: true,
                  showCursor: true,
                  decoration: InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(9),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: height * 0.027,
                    ),
                    prefixIconColor: Colors.black.withOpacity(0.5),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.15),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      fontSize: height * 0.018,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.2,
                width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: height * 0.02,
                            bottom: height * 0.03,
                            right: width * 0.025),
                        child: Container(
                          width: width * 0.55,
                          height: height,
                          decoration: BoxDecoration(
                            color: contDetails[index].color,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: height * 0.03, left: width * 0.045),
                            child: Text(
                              contDetails[index].title,
                              style: TextStyle(
                                  color: Colors.white, fontSize: height * 0.028),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Goals',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.024,
                        fontWeight: FontWeight.w600,
                        height: 0),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0xffFF3F6F),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width,
                height: height * 0.49,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: height * 0.018),
                        child: Container(
                          width: width,
                          height: height * 0.17,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.045),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: height * 0.14,
                                  width: width * 0.25,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        width: width * 0.215,
                                        height: height * 0.11,
                                        child: Transform.rotate(
                                          angle: -3.14,
                                          child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor:
                                                contDetails[index].color,
                                            color: const Color(0xffDEDEE0),
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.directions_run,
                                        size: height * 0.06,
                                        color: contDetails[index].color,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.06,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Drink more water',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: height * 0.023,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1),
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                    Text(
                                      '5 of 10 glasses',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: height * 0.017,
                                          fontWeight: FontWeight.w400),
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
