import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class CardSearchScreen extends StatefulWidget {
  const CardSearchScreen({Key? key}) : super(key: key);

  @override
  _CardSearchScreenState createState() => _CardSearchScreenState();
}

class _CardSearchScreenState extends State<CardSearchScreen> {
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xffC0C0C0) ,
        title: Text("혜택 찾기"), actions: [
        Icon(Icons.notifications, color : Color(0xffF8F8FA))
      ],),
      body: SingleChildScrollView(

        child: Container(
          width: w_percent * width_whole,

          child: Column(
            children: [
              Text("혜택 관리 받을 카드를 선택하세요"),
              Container(
                width: width * 0.5,
                  height: height * 0.1,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: IconButton(

                      onPressed: () {

                      },
                      icon: Icon(Icons.search, color : Colors.black),
                    ),
                    hintText:"카명을 입력해 보세요",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(width: 1, color: const Color(0xffF6F6F6))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(width: 1, color: const Color(0xffF6F6F6))
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
              )
            ],

          ),
        ),
      ),


    );
  }
}
