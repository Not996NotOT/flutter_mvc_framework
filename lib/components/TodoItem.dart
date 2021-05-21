import 'package:flutter/material.dart';

import 'builder/MyWidgetBuilder.dart';

class TodoItem extends StatefulWidget {
  int id;
  String todo;
  bool isFinished;
  TodoItem(
      {required Key key,
      required this.id,
      required this.todo,
      required this.isFinished})
      : super(key: key);

  @override
  _TodoItemState createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: MyWidgetBuilder(Text(this.widget.id.toString()))
          .paddingAll(all: 15)
          .background(Colors.pink)
          .build(),
      title: Text(this.widget.todo.toString()),
      trailing: Text(this.widget.isFinished ? "完成" : " 未完成"),
    );
  }
}
