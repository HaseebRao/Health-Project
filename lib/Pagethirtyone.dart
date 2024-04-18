import 'package:flutter/material.dart';
class Pagethirtyone extends StatefulWidget {
  const Pagethirtyone({super.key});
  @override
  State<Pagethirtyone> createState() => _PagethirtyoneState();
}
class _PagethirtyoneState extends State<Pagethirtyone> {
  // List<String> text = [
  //   'Plastic',
  //   "Glass",
  //   'Organic',
  //   'Metal',
  //   'Paper',
  //   'Othera',
  // ];
  List<Names> dataList = [
    Names(title: 'Plastic', icon: Icons.signal_cellular_no_sim_sharp),
    Names(title: 'Glass', icon: Icons.hourglass_bottom_outlined),
    Names(title: 'Organic', icon: Icons.apple_outlined),
    Names(title: 'Metal', icon: Icons.electric_meter_outlined),
    Names(title: 'Paper', icon: Icons.newspaper_outlined),
    Names(title: 'Others', icon: Icons.add_circle_outlined),
  ];
  // List<IconData>icondata=[
  //  Icons.signal_cellular_no_sim_sharp,
  //   Icons.hourglass_bottom_outlined,
  //   Icons.apple_outlined,
  //   Icons.electric_meter_outlined,
  //   Icons.newspaper_outlined,
  //   Icons.add_circle_outlined,
  //
  // ];

  int _counter =0;
  void _incrementCounter(){
    setState(() {
      _currentSliderValue++;
    });
  }


  double _currentSliderValue = 0;
  int _isSlected=-1;


  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.withOpacity(0.8),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: width*0.055, top: height*0.15),
            child: Column(
              children: [
                Container(
                  height:height*0.20,
                  width: width*0.88,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.green,
                  ),
                 child: Padding(
                   padding:  EdgeInsets.only(left: width*0.025,right: width*0.03,top: height*0.017),
                   child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Padding(
                         padding: EdgeInsets.only(left: width*0.047),
                         child: Row(
                            children: [
                              Text(
                                '4 kg',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: height * 0.033,
                                    fontWeight: FontWeight.w500,
                                    height: 0),
                              ),
                              SizedBox(width: width*0.28,),
                              IconButton(onPressed: _incrementCounter,
                                tooltip: 'increment',
                                icon: Icon(Icons.add,color: Colors.yellow,fill: 0,),),
                              Center(
                                child: Row(
                                  children: [
                                    Text(
                                      "$_currentSliderValue",
                                      style: TextStyle(
                                        color: Colors.yellow,fontWeight: FontWeight.w600,fontSize: height*0.032,
                                      ),
                                    ),
                                    Text(
                                      '\$',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.yellow,fontWeight: FontWeight.w600,fontSize: height*0.032,
                                          height: 0),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                       ),
                       Padding(
                         padding:  EdgeInsets.only(left: width*0.047),
                         child: Row(
                           children: [
                             Text(
                               'Plastic',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: height * 0.021,
                                   fontWeight: FontWeight.w400,
                                   height: 0),
                             ),
                             SizedBox(width: width*0.428,),
                             Text(
                               'Income',
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: height * 0.021,
                                   fontWeight: FontWeight.w400,
                                   height: 0),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: height*0.018,),
                       Slider(
                         value: _currentSliderValue,
                         min: 0,
                         max: 100,
                         divisions: 10,
                          thumbColor: Colors.yellow,
                          activeColor: Colors.white,
                         secondaryActiveColor: Colors.white,
                         label: _currentSliderValue.round().toString(),
                         onChanged: (double value) {
                           setState(() {
                             _currentSliderValue = value;
                           });
                         },
                       ),
                     ],
                   ),
                 )
                ),
                SizedBox(
                  height: height*0.44,
                  width: width*0.89,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing:17.0,
                      crossAxisSpacing: 22.0,
                      childAspectRatio: 1.88,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            _isSlected=index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:index==_isSlected?Colors.green:Colors.white,
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(color: Colors.green, width: 2.5),
                          ),

                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: width*0.04,),
                                Icon(
                                 dataList[index].icon,
                                  size:45.0,
                                  color: index==_isSlected?Colors.white:Colors.green,
                                ),
                                SizedBox(width: width*0.02,),
                                Text(
                                  dataList[index].title,
                                  style: TextStyle(color:index==_isSlected?Colors.white:Colors.black, fontSize: 20.0,fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: 6, // Total number of containers in the grid
                  ),
                ),
                Container(
                  height: height*0.077,
                  width: width*0.44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.023,
                          fontWeight: FontWeight.w600,
                          height: 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height*0.062,),
          // Container(
          //   height: height*0.07,
          //   width: width,
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //
          //   ),
          //   child:Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Icon(
          //
          //         Icons.energy_savings_leaf_rounded,
          //         size:37.0,
          //         color: Colors.white,
          //       ),
          //       Icon(
          //
          //         Icons.add_alert_rounded,
          //         size:37.0,
          //         color: Colors.white,
          //       ),
          //       Icon(
          //
          //         Icons.share,
          //         size:37.0,
          //         color: Colors.white,
          //       ),
          //       Icon(
          //
          //         Icons.person,
          //         size:37.0,
          //         color: Colors.white,
          //       ),
          //
          //       Icon(
          //
          //         Icons.list_outlined,
          //         size:37.0,
          //         color: Colors.white,
          //       ),
          //     ],
          //   )
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.lightGreenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.lightGreen,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
class Names{
  String title;
  IconData icon;
  Names({
    required this. title, required this.icon,
});
}