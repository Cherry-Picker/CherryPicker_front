import 'package:cherrypicker/CDS/CherryPickerButton.dart';
import 'package:cherrypicker/CDS/CherryPickerColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../main.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  var list = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height ;
    final width = MediaQuery.of(context).size.width ;
    final h_percent = height/height_whole;
    final w_percent = width/ width_whole;
    String? selectedValue ;
    List<String> items = ["SKT", "KT", "LG U+", "SKT 알뜰폰", "KT 알뜰폰", "LG 알뜰폰"];


    return Scaffold(
      appBar: AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      leading: const Icon(Icons.arrow_back_ios, size : 20, color : Color(0xff7E8590)),
      centerTitle : true,),
      body: Container(
        color : Colors.white,
        child: Column(
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
                child: DropdownButtonFormField(
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
                  icon: Center(child: Icon(Icons.keyboard_arrow_down_rounded, color : CherryPickerColors.greycolor)),
                  isDense: true,

                  items: items.map((item) =>
                    DropdownMenuItem<String>(

                      value: item,
                      child: Text(
                        item,
                        style: const TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ))
                    .toList(),
                  value: selectedValue,
                  onSaved: (value) {

                    setState(() {

                      selectedValue = value as String;
                    });
                  }, onChanged: (String? value) {
                    setState(() {

                      selectedValue = value as String;
                    });
                  },


                )

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
                  Container(
                    width: 312 * w_percent,
                    height: 50 * h_percent,
                    child: IconButton(
                      padding: EdgeInsets.zero, // 패딩 설정
                      constraints: BoxConstraints(), // constraints
                      onPressed: () {
                        list = [false, false, false, false, false];
                        showModalBottomSheet(shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),

                        ),context: context, builder: (BuildContext bottomsheetcontext){

                          return _sheet(h_percent, w_percent);

                        });

                      },
                      icon: CherryPickerButton.MainButton(h_percent * 50, h_percent * 312, "확인"),
                    ),
                  )

                ],
              ),
            )



          ],
        ),
      ),
    );
  }
  Widget _sheet(double h_percent, double w_percent){
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return Container(
          color : Colors.white,
          width: 360 * w_percent,
          height: 457 * h_percent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top : 19 * h_percent),
                child: Container(
                  height: 62 * h_percent,
                  width: 324 * w_percent,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 1,
                        color : Color(0xffDDE3EC)
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(5.0)
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:EdgeInsets.only(left : 13 * w_percent),
                        child: Container(
                          width : 30 * w_percent,
                          height: 30 * h_percent,
                          child: IconButton(
                            padding: EdgeInsets.zero, // 패딩 설정
                            constraints: BoxConstraints(), // constraints
                            onPressed: () {
                              if(list[0] == false){
                                list = [true, true, true, true, true];
                                setState(() {

                                });
                              }else{
                                list = [false, false, false, false, false];
                                setState(() {

                                });
                              }

                            },
                            icon: Icon(Icons.check_circle_outline_rounded, size : 35, color : list[0]? CherryPickerColors.maincolor:Color(0xffDDE3EC)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left : 11 * w_percent),
                        child: Text("약관에 모두 동의", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : Colors.black),),
                      )



                    ],
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 29 *h_percent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left : 33 * w_percent),
                      child: Container(
                        width : 30 * w_percent,
                        height: 30 * h_percent,
                        child: IconButton(
                          padding: EdgeInsets.zero, // 패딩 설정
                          constraints: BoxConstraints(), // constraints
                          onPressed: () {
                            list[1] = !list[1];
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.check_rounded, size : 30, color : list[1]? CherryPickerColors.maincolor : Color(0xffDDE3EC)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left : 20 * w_percent),
                      child: Text("체리피커 필수 항목 모두 동의", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : Colors.black),),
                    )
                  ],
                ),
              ),
              Padding(
              padding: EdgeInsets.only(top: 5 * h_percent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left : 33 * w_percent),
                      child: Container(
                        width : 30 * w_percent,
                        height: 30 * h_percent,
                        child: IconButton(
                          padding: EdgeInsets.zero, // 패딩 설정
                          constraints: BoxConstraints(), // constraints
                          onPressed: () {
                            list[2] = !list[2];
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.check_rounded, size : 30, color : list[2]? CherryPickerColors.maincolor : Color(0xffDDE3EC)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left : 20 * w_percent),
                      child: Text("휴대폰/카드 본인확인 서비스", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : Colors.black),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5 * h_percent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left : 33 * w_percent),
                      child: Container(
                        width :30 * w_percent,
                        height: 30 * h_percent,
                        child: IconButton(
                          padding: EdgeInsets.zero, // 패딩 설정
                          constraints: BoxConstraints(), // constraints
                          onPressed: () {
                            list[3] = !list[3];
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.check_rounded, size : 30, color :list[3]? CherryPickerColors.maincolor : Color(0xffDDE3EC)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left : 20 * w_percent),
                      child: Text("맞춤형 광고 선택 동의", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : Colors.black),),
                    )
                  ],
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 5 * h_percent),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left : 33 * w_percent),
                      child: Container(
                        width : 30 * w_percent,
                        height: 30 * h_percent,
                        child: IconButton(
                          padding: EdgeInsets.zero, // 패딩 설정
                          constraints: BoxConstraints(), // constraints
                          onPressed: () {
                            list[4] = !list[4];
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.check_rounded, size : 30, color : list[4]? CherryPickerColors.maincolor : Color(0xffDDE3EC)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left : 20 * w_percent),
                      child: Text("마케팅 정보 수신 선택 동의", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color : Colors.black),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top : 119 * h_percent),
                child: Container(
                  height: 50 * h_percent,
                  width: 336 * w_percent,
                  child:IconButton(
                    padding: EdgeInsets.zero, // 패딩 설정
                    constraints: BoxConstraints(), // constraints
                    onPressed: () {},
                    icon: CherryPickerButton.MainButton(50 * h_percent, 336 * w_percent, "다음"),
                  ),


                ),
              )

            ],

          ),
        );
      }
    );
  }

}
