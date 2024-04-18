import 'package:flutter/material.dart';
class pagefive extends StatelessWidget {
  pagefive({super.key});
  List<String> text=[
    'All',
    'Shoes',
    'Watch',
    'Camera',
    "Television",
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding:  EdgeInsets.only(top:height* 0.017,left: 21),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: width * 0.12,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      // Container background color
                      borderRadius: BorderRadius.circular(49.0),
                      // Border radius
                      image: DecorationImage(
                        image: AssetImage('assets/images/doll.jpg'),
                        // Asset image path
                        fit: BoxFit.fill,
                        // Image fit property

                      ),
                    ),
                  ),
                  SizedBox(width: width*0.04,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                                color: Colors.black38.withOpacity(0.5),
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(width: width*0.01,),
                          Icon(
                            Icons.waving_hand,
                            size: 20.0,
                            color: Colors.orangeAccent,
                          ),
                        ],
                      ),
                      Text(
                        "Cameron Williamson",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: height * 0.023,
                            fontWeight: FontWeight.w600,
                            height: 0),
                      ),
                    ],
                  ),
                  SizedBox(width: width*0.18,),
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: height*0.035,),
                  Padding(
          padding: const EdgeInsets.only(right: 22.0),
          child: Container(
            height: height*0.065,
            width: width*0.89,
            decoration: BoxDecoration(
              color: Colors.black38.withOpacity(0.1),
              borderRadius: BorderRadius.circular(14.0),

            ),
           child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search...',

                prefixIcon: Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: Icon(Icons.timeline_outlined),
                  onPressed: () {
                    // Clear text field logic
                  },
                ),
              ),
            ),
          ),
                  ),
              Padding(
                padding: EdgeInsets.only(right:24,top: 28),
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  children: [
                    Text(
                      "Featured",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.023,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.black38.withOpacity(0.5),
                          fontSize: height * 0.020,
                          fontWeight: FontWeight.w500,
                          height: 0),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: SizedBox(height: height*0.29,width: width,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Container(
                              width: width * 0.34,
                              height: height * 0.20,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                // Container background color
                                border: Border.all(
                                  color: Colors.white, // Border color
                                  width: 2.0, // Border width
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                                // Border radius
                                image: DecorationImage(
                                  image: AssetImage('assets/images/pink.jpg'),
                                  // Asset image path
                                  fit: BoxFit.fill,
                                  // Image fit property

                                ),
                              ),
                              child:Padding(
                                padding: const EdgeInsets.only(bottom: 125.0,left: 101,right: 8,top: 10),
                                child:  Container(
                                  height: height*0.028,
                                  width: width*0.053,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  child:Icon(
                                    Icons.favorite_outline,
                                    size: 20.0,
                                    color: Colors.red,
                                  ),

                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0,top: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mans Jacket",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.019,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                                SizedBox(height: height*0.007,),
                                Text(
                                  '\$24',
                                  style: TextStyle(
                                      color: Colors.indigo,
                                      fontSize: height * 0.020,
                                      fontWeight: FontWeight.w600,
                                      height: 0),
                                ),
                              ],
                            ),
                          ),

                        ],
                      );
                  }
                ),
                ),
              ),
              Row(
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: height * 0.024,
                        fontWeight: FontWeight.w500,
                        height: 0),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SizedBox(
                  height: height*0.08,width: width,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              height: height*0.045,
                              decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(28.0),
                              ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 22.0,right: 22,top: 9),
                               child: Text(
                                 text[index],
                                 textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.018,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                             ),
                            ),
                          )
                        ],
                      );
                    }
                ),

                ),
              ),
              Container(height: height*0.299,width: width,
                child: GridView.builder(

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 10,
                      crossAxisCount:2  ,
                      crossAxisSpacing: 10,
                      childAspectRatio:0.75
                  ),
                  itemCount:4,
                  itemBuilder: (context, index) {
                    return SizedBox(height: height*0.4,width: width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: width*0.417,
                            height: height*0.195,
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(22.0),
                              image: DecorationImage(
                                image: AssetImage('assets/images/blackshoes.jpg'),
                                // Asset image path
                                fit: BoxFit.fill,
                                // Image fit property

                              ),
                            ),
                            child:Padding(
                              padding: const EdgeInsets.only(bottom: 118.0,left: 127,right: 17,top: 12),
                              child:  Container(
                                height: height*0.028,
                                width: width*0.053,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                                child:Icon(
                                  Icons.favorite_outline,
                                  size: 20.0,
                                  color: Colors.black,
                                ),

                              ),
                            ),
                          ),

                          Text(
                            "K-Swiss Vista Tra...",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.020,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),
                          SizedBox(height: height*0.009,),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Row(

                              children: [
                                Icon(
                                  Icons.star_half_outlined,
                                  size: 23.0,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  "4.5    ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.020,
                                      fontWeight: FontWeight.w500,
                                      height: 0),
                                ),
                                Container(
                                  height: height*0.02,
                                  width:width*0.0014,
                                  color: Colors.black,
                                ),
                                SizedBox(width: width*0.03,),
                                Container(
                                  width: width*0.18,
                                  height: height*0.032,
                                  decoration: BoxDecoration(
                                    color: Colors.pinkAccent.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  child:Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Text(
                                      "8,374 sold ",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: height * 0.014,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          SizedBox(height: height*0.014,),
                          Text(
                            '\$85.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: height * 0.024,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          ),

                        ],
                      ),
                    );
                  },
                ),),
                ],
          ),
        ),
      ),
    );
  }
}
