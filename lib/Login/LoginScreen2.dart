import 'dart:convert';

import 'package:cherrypicker/CDS/CherryPickerColors.dart';
import 'package:cherrypicker/Login/SignupScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:crypto/crypto.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../CDS/CherryPickerButton.dart';
import '../main.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  var id;
  var pw;
  late FToast fToast;
  @override
  void initState() {

    super.initState();
    fToast = FToast();
    fToast.init(context);


  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
      return Scaffold(
        body: Container(
          width: width,
          height: height,
          color :Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top : 134 * h_percent),
                child: Container(
                  height: 68 * h_percent,
                    width: 68 * w_percent,

                    child: Image.asset("imgs/cherrypickerlogo.png")),
              ),
              Padding(
                padding: EdgeInsets.only(top : 17 *h_percent),
                child: Text("LOGIN", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color : CherryPickerColors.maincolor),),
              ),
              Padding(
                padding: EdgeInsets.only(top : 86 * h_percent),
                child: SizedBox(
                  width: 312 * w_percent ,
                  height: 28 * h_percent,
                  child: TextField(
                    onChanged: (txt){
                      id = txt;
                    },
                    onSubmitted: (txt){
                      id = txt;
                    },
                    cursorColor: CherryPickerColors.maincolor,
                    decoration: InputDecoration(
                      hintText: "아이디",
                        hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
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
                padding: EdgeInsets.only(top : 20 *h_percent),
                child: SizedBox(
                  width: 312 * w_percent ,
                  height: 28 * h_percent,
                  child: TextField(
                  obscureText: true,
                    onChanged: (txt){
                      pw = txt;
                    },
                    onSubmitted: (txt){
                      pw = txt;
                    },
                    cursorColor: CherryPickerColors.maincolor,
                    decoration: InputDecoration(
                        hintText: "비밀번호",
                        hintStyle: TextStyle(color: Color(0xffBAC2CE), fontSize: 15, fontWeight: FontWeight.w500),
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
                padding:EdgeInsets.only(top : 80 * h_percent),
                child: Container(
                  width: 312 * w_percent,
                  height: 50 * h_percent,
                  child: IconButton(
                    padding: EdgeInsets.zero, // 패딩 설정
                    constraints: BoxConstraints(), // constraints
                    onPressed: () {
                      _sendData();

                    },
                    icon: CherryPickerButton.MainButton(h_percent * 50, h_percent * 312, "로그인"),

                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only( top : 20 * h_percent),
                child: Container(
                  width: 80 * w_percent,
                  height: 30 * h_percent,
                  child: IconButton(
                    padding: EdgeInsets.zero, // 패딩 설정
                    constraints: BoxConstraints(), // constraints
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                      );


                    },
                    icon: Center(child: Text("회원가입", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : CherryPickerColors.maincolor),),),
                  ),

                ),
              )


            ],
          ),
        ),
      );
  }
  Widget toast = Opacity(opacity: 0.8,
      child: Container(
        decoration: BoxDecoration(
          color : CherryPickerColors.maincolor,
          borderRadius: BorderRadius.all(
              Radius.circular(10.0)
          ),
        ),
        width : 248,
        height:  60,

        child: Center(
          child: Text("로그인 성공", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, fontFamily: 'MainFont', color : Colors.white) ),
        ),)
  );

  Future<void> _sendData() async {
    var map = new Map<String, dynamic>();
    var pw_byte = await utf8.encode(pw);
    var pw_digest = await sha256.convert(pw_byte);
    map['id'] = await id;
    map['pw'] =await pw_digest.toString();



    var map_json = await json.encode(map);
    final response = await http.post(

        Uri.parse("http://118.67.133.146:5000/user/login"),
        body: map_json,
        headers: { "Content-Type": "application/json"}
    );

    if(response.statusCode == 200){
      fToast.showToast(child: toast, gravity: ToastGravity.CENTER, toastDuration: Duration(seconds:3));


    }else{

    }
    print(response.statusCode.toString());
  }
}
