

import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  Todo(DocumentSnapshot doc) {
    this.title = doc.data()['title'];
    this.createdAt = doc.data()['createAt'];
  }

  String title;
  DateTime createdAt;
}