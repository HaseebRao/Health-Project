import 'package:flutter/material.dart';
import 'dart:math';
class Lotteryapp extends StatefulWidget {
  const Lotteryapp({super.key});

  @override
  State<Lotteryapp> createState() => _LotteryappState();
}

class _LotteryappState extends State<Lotteryapp> {
  Random random = Random();
  int x=9;
     int y =7;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Lottery app",style: TextStyle(color: Colors.blue,fontSize: 28,fontWeight: FontWeight.w500),
            ),
          ),
        ),
        body: Column(
          children:  [
          // Text(x.toString(),style: TextStyle(fontSize: 38),
                 SizedBox(
                   height: 60,
                   width: 60,
                   child: Text(y.toString(),style: TextStyle(fontSize: 38),
                 ),
                 ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                  Center(child: Text("Lottery winning number is 4", style: TextStyle(color: Colors.blue,),)),
               SizedBox(height: 20,),
               Center(
                 child: Container(
                   height: 250,
                   width: 300,
                   decoration: BoxDecoration(
                     color: Colors.grey.withOpacity(0.2),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: x ==4?
                Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Icon(Icons.done_all,color: Colors.red,size: 35,),
                         SizedBox(height: 10,),
                         Center(child: Text("Congratulation you have won the lotttery your number is $x\n ", textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,),)),
                    ]):Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                                      Icon(Icons.error,color: Colors.black,size: 35,),
                             SizedBox(height: 15,),

                 Text(" Better luck next time your number is $x\n try again", textAlign: TextAlign.center,style: TextStyle(color: Colors.black,),),
                ],
                   ),
                 ),
               ) ,
                ),
                 Column(
                   children: [
                     Container(
                       height:53,
                         width:55,
                       decoration: BoxDecoration(
                         color: Colors. red,
                                        borderRadius: BorderRadius.circular(10),
                       ),
                              child: Icon(Icons. add)
                     ),
                   ],
                 )
              ]
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
                                   backgroundColor: Colors.blue,
          onPressed: (){
            x= random.nextInt(8);
            print(x);
            setState(() {
            });
          },
          child: Icon( Icons.refresh ,color: Colors.red,),
        ),
      ),
    );
  }
}
