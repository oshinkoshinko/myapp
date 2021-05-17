import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final items = List<String>.generate(10000, (i) => "Item $i");


class YoutubePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("youtube"),
      ),
      body: ListView.builder(
        //リストのセルの数
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            //セルの中身 上でitemsの配列を定義
            title: Text('${items[index]}'),
          );
        },
      ),
    );
  }
}