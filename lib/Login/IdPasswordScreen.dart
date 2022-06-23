import 'package:cherrypicker/CDS/CherryPickerButton.dart';
import 'package:cherrypicker/CDS/CherryPickerColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class IdPasswordScreen extends StatefulWidget {
  const IdPasswordScreen({Key? key}) : super(key: key);

  @override
  _IdPasswordScreenState createState() => _IdPasswordScreenState();
}

class _IdPasswordScreenState extends State<IdPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top : 100 * h_percent , left :25 *w_percent),
              child: Text("거의 다 완료되었어요", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
            ),
            Padding(
              padding: EdgeInsets.only(left : 25 * w_percent),
              child: Text("아이디와 비밀번호를 설정해주세요", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top : 105 * h_percent),
                  child: Container(

                    width: 312 * w_percent,
                    height: 54 * h_percent,
                    child: TextField(
                      cursorColor: CherryPickerColors.maincolor,
                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: CherryPickerColors.maincolor),
                          borderRadius: BorderRadius.circular(10.0),
                        ),


                          filled: true,
                          hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
                          hintText: "아이디",
                          fillColor: Color(0xfff8f8fa)),
                    ),
                  ),
                ),

              ],
            ),
            Padding(
              padding:EdgeInsets.only(top : 8 * h_percent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    width: 312 * w_percent,
                    height: 54 * h_percent,
                    child: TextField(
                      cursorColor: CherryPickerColors.maincolor,
                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: CherryPickerColors.maincolor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),


                          filled: true,
                          hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
                          hintText: "비밀번호",

                          fillColor: Color(0xfff8f8fa)),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top : 8 * h_percent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    width: 312 * w_percent,
                    height: 54 * h_percent,
                    child: TextField(
                      cursorColor: CherryPickerColors.maincolor,
                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: CherryPickerColors.maincolor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),


                          filled: true,
                          hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
                          hintText: "비밀번호 확인",
                          fillColor: Color(0xfff8f8fa)),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top : 8 * h_percent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    width: 312 * w_percent,
                    height: 54 * h_percent,
                    child: TextField(
                      cursorColor: CherryPickerColors.maincolor,
                      decoration: InputDecoration(

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: CherryPickerColors.maincolor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),


                          filled: true,
                          hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
                          hintText: "닉네임",
                          fillColor: Color(0xfff8f8fa)),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top : 150 * h_percent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50 * h_percent,
                    width: 312 * w_percent,
                    child: IconButton(
                      padding: EdgeInsets.zero, // 패딩 설정
                      constraints: BoxConstraints(), // constraints
                      onPressed: () {


                      },
                      icon: CherryPickerButton.MainButton(50 * h_percent, 312 * w_percent, '확인')
                    ),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
