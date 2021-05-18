import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/grid_list.dart';
import 'package:flutter_app/long_lists.dart';
import 'package:flutter_app/next_page.dart';
import 'package:flutter_app/todo.dart';
import 'package:flutter_app/youtube.dart';

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
            leading: Icon(Icons.movie),
            title: Text('Youtube'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YoutubePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Todo'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoPage()),
              );
            },
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