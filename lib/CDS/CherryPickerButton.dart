import 'package:cherrypicker/CDS/CherryPickerColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CherryPickerButton{
  static Widget MainButton(double myheight, double mywidth, String text){
    return Container(
      width : mywidth,
      height: myheight,
      child: IconButton(
        padding: EdgeInsets.zero, // 패딩 설정
        constraints: BoxConstraints(), // constraints
        onPressed: () {},
        icon: Container(
          child: Center(child: Text("확인", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color : Colors.white),),),
          decoration: BoxDecoration(
            color: CherryPickerColors.maincolor,
            borderRadius: BorderRadius.all(
                Radius.circular(10.0)
            ),
          ),

        ),
      ),
    );
  }
}