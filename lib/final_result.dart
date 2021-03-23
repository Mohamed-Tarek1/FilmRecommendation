import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class FinalResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,//overflow: Overflow.visible,
        children: [

          Positioned(
            child: Container(
              child: Image.asset('assets/images/endgame.jpg',fit: BoxFit.cover,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height*0.5 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight:Radius.circular(30),topLeft: Radius.circular(30)),color: Colors.white),
           child: Center(
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text('i recommend you to watch '),
                   Text('The Avenger End Game',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                   Text('Action ,Drama ,SuperHero',style: TextStyle(color: Colors.grey.shade400),),
                   Text('Avengers: Endgame is a 2019 American superhero film '
                       'based on the Marvel Comics superhero team the Avengers.'
                       'Produced by Marvel Studios and distributed by'
                       'Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel',maxLines: 6,textAlign: TextAlign.center,),
                   Container(
                     color: Colors.grey.shade400,
                     height: 1,
                     width:MediaQuery.of(context).size.width*0.7 ,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         Text('it is match your requirement by 80% ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                       ],
                     ),
                   ),
                   Text('Try another one',style: TextStyle(color: Colors.grey.shade400),),
                 ],
               ),
             ),
           ),
            ),
          ),

        ],
      ),

    );
  }
}
