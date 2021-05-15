import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("グリッドリストページ"),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        //列の数
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        //要素の数
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Item $index',
              style: Theme.of(context).textTheme.headline5,
            ),
          );
        }),
      ),
    );
  }
}