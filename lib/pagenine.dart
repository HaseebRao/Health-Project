import 'package:flutter/material.dart';

class pagenine extends StatelessWidget {
  pagenine({super.key});
  List<IconData> iconList = [
    Icons.favorite_outline,
    Icons.bookmark_border_outlined,
    Icons.list_outlined,
    Icons.playlist_play,
    Icons.download_done_sharp,
    Icons.file_download_outlined,
  ];
  List<String> text = [
    'Favorite',
    "Bookmarks",
    'Hightlights',
    'Playlist',
    'Finished',
    'Downloads',
  ];
  List<String> images=[
    "assets/images/game.jpg",
    "assets/images/SPI.jpg",
    "assets/images/jin.jpg",
    "assets/images/game.jpg",
    "assets/images/SPI.jpg",
    "assets/images/jin.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bi.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, ),
            child: Column(
              children: [
                Text(
                  "My Library",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: height * 0.038,
                      fontWeight: FontWeight.w600,
                      height: 0),
                ),
                SizedBox(
                  height: height * 0.04,
                ),
                SizedBox(
                  height: height * 0.6,
                  width: width,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                      itemCount: text.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 18.0),
                          child: Padding(
                            padding: const EdgeInsets.only( left: 23, right: 23),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: height * 0.055,
                                      width: width * 0.115,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.12), // Set the shadow color
                                            spreadRadius: 4, // Set the spread radius of the shadow
                                            blurRadius: 7, // Set the blur radius of the shadow
                                            offset: Offset(4, 4), // Set the offset of the shadow
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 3.0),
                                        child: Icon(
                                          iconList[index],
                                          size: 26.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * 0.035,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          text[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: height * 0.021,
                                              fontWeight: FontWeight.w500,
                                              height: 0),
                                        ),
                                        Text(
                                          "8 items",
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.5),
                                              fontSize: height * 0.015,
                                              fontWeight: FontWeight.w500,
                                              height: 0),
                                        ),
                                      ],
                                    ),
                                    Spacer(),

                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 22.0,
                                      color: Colors.black,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height * 0.025,
                                ),
                                Container(
                                  height: height * 0.0002,
                                  width: width * 0.89,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: height * 0.013,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 23, right: 23),
                  child: Row(
                    children: [
                      Text(
                        "Recent",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: height * 0.027,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:12,left: 12,),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width,
                        height: height * 0.208,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 11,
                              child: Container(
                                height: height * 0.045,
                                width: width*0.94,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/shell.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(top: width*0.032,
                              child: SizedBox(
                                height: height * 0.29,
                                width: width,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:4,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(right:2 ,top: 5,left:15),
                                            child: Container(
                                              width: width * 0.185,
                                              height: height * 0.135,
                                              decoration: BoxDecoration(
                                                // Container background color
                                                // Border radius
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    images[index],),
                                                  // Asset image path
                                                  fit: BoxFit.cover,
                                                  // Image fit property
                                                ),
                                              ),

                                            ),
                                          ),
                                        ],
                                      );
                                    }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// boxShadow: [
//   BoxShadow(
//     color: Colors.black.withOpacity(0.4),
//     spreadRadius: 0,
//     blurRadius: 4,
//     blurStyle: BlurStyle.outer,
//     offset: Offset(0, 2),
//   ),
// ],
