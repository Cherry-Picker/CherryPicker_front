import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class PlusAccountScreen extends StatefulWidget {
  const PlusAccountScreen({Key? key}) : super(key: key);

  @override
  _PlusAccountState createState() => _PlusAccountState();
}

class _PlusAccountState extends State<PlusAccountScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.clear, size : 20, color : Color(0xff7E8590)),
        centerTitle : true,title: Text("계좌 추가하기", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color : Colors.black),),),
      body:SingleChildScrollView(
        child : Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width : 41.9 * w_percent,
                    height: 25 * h_percent,
                    child: Image.asset("imgs/cardimg.png"),
                  )

                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
