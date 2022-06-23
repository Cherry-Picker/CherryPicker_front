import 'package:cherrypicker/CDS/CherryPickerColors.dart';
import 'package:cherrypicker/Main/RecommendScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../CDS/CherryPickerButton.dart';
import '../main.dart';

class SuccessLoadingScreen extends StatefulWidget {
  final List<dynamic> cards;
  final List<bool> pickedcardid;
  const SuccessLoadingScreen(this.cards, this.pickedcardid);

  @override
  _SuccessLoadingScreenState createState() => _SuccessLoadingScreenState();
}

class _SuccessLoadingScreenState extends State<SuccessLoadingScreen> {
  var cardcompanynames;
  var cardcompanyimages;
  var _bankNames= ['농협카드', '우리카드', '신한카드', 'KB국민카드', '하나카드', '기업카드', '카카오뱅크카드', 'MG새마을카드', 'BC카드', '부산카드', '경남카드', '광주카드', '전북카드', '신협카드', 'SC제일카드', '산업카드', '대구카드', '삼성카드', '우체국카드', '수협카드', '현대카드','롯데카드', 'SBI저축카드', '유안타증권카드', '씨티카드', '토스뱅크카드'];
  var _bankImages = ['imgs/nhbank.png', 'imgs/uricard.png', 'imgs/sinhanbank.png','imgs/kookminbank.png',  'imgs/hanabank.png', 'imgs/ibkbank.png', 'imgs/kakaobank.png', 'imgs/newbank.png','imgs/bccard.png', 'imgs/busanbank.png' , 'imgs/busanbank.png', 'imgs/guangjubank.png', 'imgs/guangjubank.png', 'imgs/sinhyupbank.png', 'imgs/scbank.png', 'imgs/sanupcard.png', 'imgs/deagubank.png', 'imgs/samsungcard.png','imgs/nobank.png', 'imgs/suhyupbank.png', 'imgs/hdcard.png',  'imgs/lottecard.png', 'imgs/sbicard.png','imgs/uantacard.png','imgs/citicard.png', 'imgs/tosscard.png' ];
  @override
  void initState() {
    _loadCompanys();
    super.initState();
  

  }


  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    print(widget.cards.toString());

    return Scaffold(
        body: Container(
        width: width,
        height: height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top : 172 * h_percent, left : 24 * w_percent),
              child: Text("체리피커를 위한", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
            ),
            Padding(
              padding: EdgeInsets.only(left : 24 * w_percent),
              child: Text("카드사 목록 가져오기 완료", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color : Colors.black),),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top : 62 * h_percent, left : 24 * w_percent),
                  child: Text("연결 성공한 카드사 ", style: TextStyle(fontSize: 18,  fontWeight: FontWeight.w700, color : Colors.black),),
                ),
                Padding(
                  padding: EdgeInsets.only(top : 62 * h_percent),
                  child: Text(widget.cards.length.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color : CherryPickerColors.maincolor),),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.only(top:6* h_percent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container( height:1.0,
                    width: 328 * w_percent,
                    color:Color(0xffEFEFEF),),
                ],
              ),
            ),
            Container(
              width: width,
              height: 330 * h_percent,
              child: ListView.builder(
                  padding: EdgeInsets.zero,

                  itemCount: widget.cards.length,
                  itemBuilder: (BuildContext context, int index){
                return Padding(
                  padding: EdgeInsets.only(left : 24 * w_percent, top :20 * h_percent),
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          width: (width - 24 * w_percent)/2,
                          child: Row(
                            children: [
                              Container(
                                  width : 25 * w_percent,
                                  height: 25 * h_percent
                                  ,child: Image.asset(cardcompanyimages[index])),
                              Padding(
                                padding: EdgeInsets.only(left : 12 * w_percent),
                                child: Text(cardcompanynames[index], style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color : Colors.black),),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: (width - 24 * w_percent)/2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 34 * w_percent),
                                child: Container(
                                  height: 20 *h_percent,
                                  width: 20 * w_percent,
                                  child: IconButton(
                                    padding: EdgeInsets.zero, // 패딩 설정
                                    constraints: BoxConstraints(), // constraints
                                    onPressed: () {},
                                    icon: Icon(Icons.check_rounded),
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),


                  ),
                );
              }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 312 * w_percent,
                  height: 50 * h_percent,
                  child: IconButton(
                    padding: EdgeInsets.zero, // 패딩 설정
                    constraints: BoxConstraints(), // constraints
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RecommendScreen(widget.cards)),

                      );


                    },
                    icon: CherryPickerButton.MainButton(h_percent * 50, h_percent * 312, "다음"),

                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
  void _loadCompanys(){ //카드 선택 id 에서 company이름으로 변경
    for(int i = 0 ; i < widget.pickedcardid.length ;i ++){
      if(widget.pickedcardid[i]){
        if(cardcompanynames == null || cardcompanyimages == null){
          cardcompanynames = [_bankNames[i]];
          cardcompanyimages = [_bankImages[i]];
        }else{
          cardcompanynames.add(_bankNames[i]);
          cardcompanyimages.add(_bankImages[i]);
        }
      }
    }
  }
}
