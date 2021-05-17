import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/long_lists.dart';

class YoutubePage extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.video_call_sharp),
        title: Text(
            "youtube",
        ),
        actions: <Widget>[
          SizedBox(
            width: 60,
            child: FlatButton(
              child: Icon(Icons.search),
              onPressed: (){

              },
            ),
          ),
          SizedBox(
            width: 60,
            child: FlatButton(
              child: Icon(Icons.menu),
              onPressed: (){

              },
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                        'https://avatars.githubusercontent.com/u/73822558?v=4'
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    children: <Widget>[
                      const Text(
                        'おしんこチャンネル'
                      ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.video_collection,
                            color: Colors.red,
                            ),
                            Text('登録する')
                          ],
                        ),
                        onPressed: () {

                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LongListsPage()
                          ),
                      );
                    },
                    contentPadding: EdgeInsets.all(8),
                    leading: Image.network(
                        'https://avatars.githubusercontent.com/u/73822558?v=4'
                    ),
                    title: Column(
                      children: <Widget>[
                        Text('[おしんこチャンネル]',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                         ),
                        ),
                        Row(
                          children: <Widget>[
                            Text('100回再生',
                            style: TextStyle(fontSize: 13),
                            ),
                            Text('1日前',
                            style: TextStyle(fontSize: 13),
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
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