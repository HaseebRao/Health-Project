import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller.dart';

class pageone extends StatelessWidget {
  pageone({Key? key}) : super(key: key);
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: height * 0.43,
            width: width,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 52.0,
                      left: 16,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      size: 38.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.13,
                  child: Container(
                    height: height * 0.3,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 22.0,
                        top: 35,
                        right: 22,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Quantity(300g)',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.022,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.052,
                                width: width * 0.39,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                  border: Border.all(
                                    color: Colors.black12, // Border color
                                    width: 2.0,
                                    // Border width
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    // Text("books",style: TextStyle(
                                    //   fontSize: 30,
                                    //   color: Colors.amber,
                                    // ),),
                                    Expanded(child: Container()),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.play_arrow_rounded,
                                            color: Colors.black),
                                        onPressed: () => c.increment(),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Obx(() => Text(
                                          "${c.books.toString()}",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.black,
                                          ),
                                        )),

                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                      ),
                                      child: IconButton(
                                        icon: Icon(Icons.play_arrow_rounded,
                                            color: Colors.black),
                                        onPressed: () => c.decrement(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '\$9.43',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.039,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.05,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                height: height * 0.063,
                                width: width * 0.71,
                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.020,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                              ),
                              SizedBox(
                                width: width * 0.09,
                              ),
                              Icon(
                                Icons.favorite,
                                size: 29.0,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 23.0,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sd_card_outlined,
                      size: 43.0,
                      color: Colors.white,
                    ),
                    Text(
                      '   Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.027,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                  width: width,
                  height: height * 0.37,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 2000,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 38.0),
                        child: Row(
                          children: [
                            Container(
                              width: width * 0.13,
                              height: height * 0.10,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                // Container background color
                                border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 1.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(11.0),
                                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/tea.jpg'),
                                  // Asset image path
                                  fit: BoxFit.cover,
                                  // Image fit property
                                  colorFilter: ColorFilter.mode(
                                    Colors.red, // Color to apply to the image
                                    BlendMode
                                        .color, // Blend mode for color application
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.11,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dried apricots',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.023,
                                      fontWeight: FontWeight.w400,
                                      height: 0),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  '\$9.43',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: height * 0.023,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: width * 0.24,
                            ),
                            Text(
                              'x1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height * 0.028,
                                  fontWeight: FontWeight.w400,
                                  height: 0),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.020,
                ),
                Row(
                  children: [
                    Text(
                      '3 Items',
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: height * 0.021,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                    SizedBox(
                      width: width * 0.12,
                    ),
                    Container(
                      height: height * 0.071,
                      width: width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(13),
                        ),
                        border: Border.all(
                          color: Colors.orangeAccent,
                          width: 2.0,
                          // Border width
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 0.0,
                          left: 12,
                        ),
                        child: Row(
                          children: [
                            Text(
                              '\$38.25',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: height * 0.021,
                                  fontWeight: FontWeight.w500,
                                  height: 0),
                            ),
                            SizedBox(
                              width: width * 0.083,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: height * 0.3,
                              width: width * 0.33,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(11),
                                ),
                              ),
                              child: Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: height * 0.020,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                            ),
                          ],
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
