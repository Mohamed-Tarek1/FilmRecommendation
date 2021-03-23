
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app_recommendation/wait.dart';
class Suggestion extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.values[5],
            children: [

              Text('Which one you would prefere to watch !'
                  'if you have to watch one of them?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.redAccent),maxLines: 2,textAlign: TextAlign.center,),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilmChoice(coverurl:'Horror'),
                  FilmChoice(coverurl:'SCI-FI'),
                ],

              ),
              Container(
                  width: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent
                  ),
                  child: FlatButton(onPressed: (){
                    Navigator.pop(context);

                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Waiting();
                    }));
                  }
                      ,child: Text('LETS GO',
                        style: TextStyle(
                            fontSize: 18
                            ,fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),)))
            ],


          ),
        ),
      ),
    );
  }
}

//creating a class to create the UI of the one choice by passing to it the choice name
class FilmChoice extends StatelessWidget {
  String coverurl;
  FilmChoice({this.coverurl}){
    this.coverurl=coverurl;
  }
  @override
  Widget build(BuildContext context) {
    return Container(  width: 165,height: 300,
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
        child: FlatButton(onPressed: (){}),);
  }
}
