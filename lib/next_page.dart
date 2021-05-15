import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/list.dart';

class NextPage extends StatelessWidget {

  //変数の初期化 前ページの引数を格納
  NextPage(this.name);
  final String name;

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
        color: Colors.blue,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //前ページのtextが渡されている
            Text(name),

            Center(

              child: RaisedButton(
                child: Text('戻る'),
                onPressed: (){
                  //クリック時の処理をかく
                  //画面遷移 公式document参照 戻るときに引数を持たすことができる
                  Navigator.pop(context, 'おしんこバック');


                },
              ),
            ),
            Center(
              child: ElevatedButton(
                child: Text('リストへ'),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListPage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
