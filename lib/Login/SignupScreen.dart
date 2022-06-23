import 'package:cherrypicker/CDS/CherryPickerButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    var selectedValue = 'SKT';
    final items = ["SKT", "KT", "LG U+", "SKT 알뜰폰", "KT 알뜰폰", "LG 알뜰폰"];

    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Icon(Icons.arrow_back_ios, size : 20, color : Color(0xff7E8590)),
      centerTitle : true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Padding(
            padding: EdgeInsets.only(top : 30 * h_percent, left : 25 * w_percent),
            child: const Text("입력한 정보가 맞다면", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25 * w_percent),
            child: const Text("아래 확인 버튼을 눌러주세요", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(top : 55 * h_percent,left: 25 * w_percent),
            child: const Text("휴대폰 번호", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only( left: 24 * w_percent),
            child: SizedBox(
              width: 312 * w_percent,
              height: 30 * h_percent,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color : Color(0xffDDE3EC)),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color : Color(0xff435CFA)),
                        borderRadius: BorderRadius.circular(8.0)
                    )
                ),


              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top : 16 * h_percent, left: 25 * w_percent),
            child: const Text("통신사" , style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only( left: 25 * w_percent),
            child: SizedBox(
              width: 312 * w_percent,
              height: 30 * h_percent,
              child: DropdownButton<String>(
                value: selectedValue,
                onChanged: (newValue){
                  selectedValue = newValue!;
                  setState(() {


                  });
                },

                items: items
                    .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    ))
                    .toList(),

                // add extra sugar..
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                iconSize: 42,
                underline: SizedBox(),
              ),

            ),
          ),
          Padding(
            padding: EdgeInsets.only(top : 16 * h_percent, left: 25 * w_percent),
            child: const Text("주민등록번호", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Colors.black),),
          ),
          Row(

            children: [
              Padding(
                padding: EdgeInsets.only( left: 24 * w_percent),
                child: SizedBox(
                  width: 120 * w_percent,
                  height: 30 * h_percent,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color : Color(0xffDDE3EC)),
                            borderRadius: BorderRadius.circular(8.0)
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color : Color(0xff435CFA)),
                            borderRadius: BorderRadius.circular(8.0)
                        )
                    ),

                  ),
                ),
              ),
              const Text("-  "),
              SizedBox(
                width: 120 * w_percent,
                height: 30 * h_percent,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color : Color(0xffDDE3EC)),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color : Color(0xff435CFA)),
                          borderRadius: BorderRadius.circular(8.0)
                      )
                  ),

                ),
              ),

            ],
          ),
          Padding(
            padding:EdgeInsets.only(top : 16 * h_percent, left: 25 * w_percent),
            child: const Text("이름", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only( left: 24 * w_percent),
            child: SizedBox(
              width: 312 * w_percent,
              height: 30 * h_percent,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color : Color(0xffDDE3EC)),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color : Color(0xff435CFA)),
                        borderRadius: BorderRadius.circular(8.0)
                    )
                ),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only( top: 20 * h_percent),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CherryPickerButton.MainButton(h_percent * 50, h_percent * 312, "확인")
              ],
            ),
          )



        ],
      ),
    );
  }
}
