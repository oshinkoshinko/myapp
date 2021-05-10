import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar入れてると勝手に戻るボタンがついてくる
      appBar: AppBar(
        title: Text("おしんこflutter"),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.share)],
      ),

      //option + EnterでCenterを付けたり、削除できる
      body: Container(
        color: Colors.red,
        child: Center(

          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text(
          //       'ボタンを押してみよう！',
          //     ),
          //     Text('簡単！！'),
          //
          //   ],
          // ),
          child: RaisedButton(
            child: Text('戻る'),
            onPressed: (){
              //クリック時の処理をかく
              //画面遷移 公式document参照
              Navigator.pop(context);


            },
          ),
        ),
      ),
    );
  }
}
