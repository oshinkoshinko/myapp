import 'package:flutter/material.dart';
import 'package:flutter_app/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "Flutter Demo"),
      // //最初のページは/ですよ
      // initialRoute: '/',
      // routes: {
      //   // When navigating to the "/" route, build the FirstScreen widget.
      //   // 最初のページ"/"はMyHomePageですよ
      //   '/': (context) => MyHomePage(),
      //   // When navigating to the "/second" route, build the SecondScreen widget.
      //   //2番目のページはNextPageですよ
      //   '/second': (context) => NextPage(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  //初期値を次へにして画面が戻ってきたときに引数を格納する
  String text = '次へ';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("おしんこflutter"),
        actions: <Widget>[Icon(Icons.add), Icon(Icons.share)],
      ),

      //option + EnterでCenterを付けたり、削除できる
      body: Center(
        child: Column(
          //中央寄せ
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //アイコン
            Icon(
              Icons.favorite,
              size: 50,
              color: Colors.red,
            ),
            //フォルダから画像の挿入 pubspec.yamlに記載
            Image.asset('images/prof.JPG'),

            //ネットから画像の挿入
            // const Image(
            //   image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            // ),
            RaisedButton(
            child: Text(text),
              onPressed: () async{
                //クリック時の処理をかく
                //画面遷移1 公式document参照
                //final resultを追記して、戻るボタンの引数を格納
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage("おしんこ！")),
                );
                //戻るボタンの引数がresultに格納されるのでそれをtextに格納
                text = result;
                print(result);
                // //画面遷移2
                // Navigator.pushNamed(context, '/second');
              },
            ),
          ],
        ),
      ),
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'ボタンを押してみよう！',
      //       ),
      //       Text('簡単！！'),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
