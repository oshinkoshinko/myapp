import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/grid_list.dart';
import 'package:flutter_app/long_lists.dart';
import 'package:flutter_app/next_page.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リストページ"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Map'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          ListTile(
            leading: Text('これ'),
            title: Text('ロングリスト'),
            trailing: Icon(Icons.favorite),
            onTap: () {
              //画面遷移
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LongListsPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.access_alarms_outlined),
            title: Text('グリッドリスト'),
            trailing: Icon(Icons.zoom_out_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridListPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}