
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Question3 extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: SvgPicture.asset('assets/images/clapperboard.svg',width: 170,height: 170,)),
            SizedBox(height: 100,),
            Text('What kind of movies you like to watch?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.redAccent),),

            SizedBox(height: 100,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Choice(name:'Comedy'),
                    Choice(name:'Action'),
                    Choice(name:'Adventure'),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Choice(name:'Horror'),
                    Choice(name:'SCI-FI'),
                    Choice(name:'Romantic'),
                  ],
                ),
              ],
            ),
          ],


        ),
      ),
    );
  }
}

//creating a class to create the UI of the one choice by passing to it the choice name
class Choice extends StatelessWidget {
  String name;
  Choice({this.name}){
    this.name=name;
  }
  @override
  Widget build(BuildContext context) {
    return Container(  width: 107,height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
          boxShadow: [BoxShadow(
          color: Colors.grey.withOpacity(0.3),
            spreadRadius: 5 ,
            offset: Offset(0,0),
            blurRadius: 4
          )],
        ),
        child: FlatButton(onPressed: (){},child: Text(name,
          style: TextStyle(
              fontSize: 16
              ,fontWeight: FontWeight.bold,
              color: Colors.black87
          ),)));
  }
}
