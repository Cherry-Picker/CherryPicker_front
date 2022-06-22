import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class PlusAccountScreen extends StatefulWidget {
  const PlusAccountScreen({Key? key}) : super(key: key);

  @override
  _PlusAccountState createState() => _PlusAccountState();
}

class _PlusAccountState extends State<PlusAccountScreen> {
  var _bankImages = [''];
  var touched = [false,false, false, false, false, false, false, false,  false, false, false, false, false, false, false, false, false , false, false, false];
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

        child : Container(
          color : Color(0xfff8f8fa),
          child: Column(
            children: [
              Container(
                color : Colors.white,
                width: width * width_whole,

                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24 * w_percent, bottom: 20 * h_percent),
                      child: Container(

                        width : 41.9 * w_percent,
                        height: 25 * h_percent,
                        child: Image.asset("imgs/cardimg.png"),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top : 7 * h_percent, left: 20.1 * w_percent ),
                      child: Container(
                        width: 197 * w_percent,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("내 계좌 모두 찾기", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color : Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(top : 6*h_percent, bottom: 21 * h_percent),
                              child: Text("공인인증서를 사용해서 모든 은행 계좌를 한번에 찾고 등록하세요", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Color(0xff7E8590)),),
                            )

                          ],
                        )

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left : 30 * w_percent,  bottom: 20 * h_percent),
                      child: Container(
                        width: 15 * w_percent,
                        height: 15 * h_percent,
                        child: IconButton(
                          padding: EdgeInsets.zero, // 패딩 설정
                          constraints: BoxConstraints(), // constraints
                          onPressed: () {},
                          icon: Icon(Icons.arrow_forward_ios,color : Color(0xff7E8590)),
                        ),
                      ),
                    )

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 18 * h_percent),
                child: Text("공인인증서가 없다면?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color : Colors.black),),
              ),
              Padding(
                padding: EdgeInsets.only(top : 3 * h_percent),
                child: Text("계좌번호가 해당 은행ID로 간편하게 등록하세요", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color : Color(0xff7E8590),),)
              ),
              Padding(
                padding: EdgeInsets.only(top : 21 * h_percent),
                child: Text("은행 선택", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color : Colors.black),),
              ),
              Padding(
                padding: EdgeInsets.only(top : 12 * h_percent),
                child: Container(

                  width: width - 50 * w_percent,
                  height: (429 + 60) * h_percent,
                  child: GridView.builder(

                    itemCount: 20,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 96 / 60,
                        mainAxisSpacing: 11 * w_percent,
                        crossAxisSpacing: 10 * h_percent
                    ),

                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){
                          //한개씩만 클릭되도록 하기 위함
                          touched = [false,false, false, false, false, false, false, false,  false, false, false, false, false, false, false, false, false , false, false, false];
                          touched[index] = !touched[index];
                          setState(() {

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(10.0)
                            ),
                            border: Border.all(
                                width: 2 * w_percent,
                                color : touched[index]? const Color(0xff435CFA).withOpacity(0.25) : Colors.transparent
                            ),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: touched[index]? Colors.grey.withOpacity(0.1) : Colors.transparent,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top : 3.1 *h_percent),
                                child: Container(

                                  width: 33.43 * w_percent,
                                  height: 33.43 * h_percent,
                                  child: Image.asset("imgs/hanabank.png"),

                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top : 1 * h_percent),
                                child: Text("하나", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color : Colors.black),),
                              )
                            ],
                          ),
                        ),
                      );
                    },

                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
