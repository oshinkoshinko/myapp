import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/list.dart';

class TodoPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar入れてると勝手に戻るボタンがついてくる
      appBar: AppBar(
        title: Text("Todo"),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.share)],
      ),


    );
  }
}
