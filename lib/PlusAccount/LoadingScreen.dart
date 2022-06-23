import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  final List<bool> cardcompanyid;
  const LoadingScreen(this.cardcompanyid);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  List<String> companynameforapi= ['NH농협카드', '우리카드', '신한카드', 'KB국민카드','하나카드','IBK기업은행','카카오뱅크','MG새마을금고','BC 바로카드','BNK부산은행','','광주은행','전북은행','신협','SC제일은행',
  'KDB산업은행','DGB대구은행','삼성카드','우체국','Sh수협은행','현대카드','롯데카드','SBI저축은행','유안타증권','씨티카드','토스뱅크'
  ];
  @override
  Widget build(BuildContext context) {
    _sendData();
    return Container(
      child: Image.asset("imgs/loadingimage.png"),
    );
  }
  Future<void> _sendData() async {
    for(int i = 0 ; i < widget.cardcompanyid.length ;i ++){
      if(widget.cardcompanyid[i]){


        final response = await http.get(

          Uri.parse("http://118.67.133.146:5000/card/get_cards?company="+companynameforapi[i]),


        );

        if(response.statusCode == 200){


        }else{

        }


        var a = utf8.decode(response.bodyBytes);
        var lst = jsonDecode(a);
        print(lst.toString());
      }
    }
  }

}
