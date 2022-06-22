import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlusAccount extends StatefulWidget {
  const PlusAccount({Key? key}) : super(key: key);

  @override
  _PlusAccountState createState() => _PlusAccountState();
}

class _PlusAccountState extends State<PlusAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child : Text("시작용페이지")),
        
      ),
    );
  }
}
