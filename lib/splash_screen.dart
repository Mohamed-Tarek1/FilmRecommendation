import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_recommendation/homepage.dart';
import 'package:movie_app_recommendation/question1_ui.dart';
import 'package:movie_app_recommendation/question2_ui.dart';
import 'package:movie_app_recommendation/question3_ui.dart';
import 'package:movie_app_recommendation/suggestion_ui.dart';


class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(

      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        scrollDirection: Axis.horizontal,
        controller: controller,
        children:  <Widget>[

          Center(
            child: Question1(),
          ),
          Center(
            child:Question2(),
          ),
          Center(
            child:Question3(),
          ),
          Center(
            child:Suggestion(),
          )
        ],
      )

    );
  }
}



