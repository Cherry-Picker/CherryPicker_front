import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class RecommendScreen extends StatefulWidget {
  final List<dynamic> cards;

  const RecommendScreen(this.cards);

  @override
  _State createState() => _State();
}

class _State extends State<RecommendScreen> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    return _firstScreen(w_percent, h_percent);
  }

  Widget _firstScreen(double w_percent, double h_percent){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xffC0C0C0) ,
        title: Text("혜택 찾기"), actions: [
        Icon(Icons.notifications, color : Color(0xffF8F8FA))
      ],),
      body: SingleChildScrollView(

        child: Container(
          width: w_percent * width_whole,
          color: Color(0xffC0C0C0),
          child: Column(
            children: [

            ],

          ),
        ),
      ),


    );

  }

}
