import 'package:flutter/material.dart';
import 'package:flutter_mvc_framework/components/TodoItem.dart';
import 'package:flutter_mvc_framework/views/todo/TodoController.dart';
import 'package:get/get.dart';

class TodoView extends GetView<TodoController> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("代办事项")),
      body: Center(
        child: Obx(() => ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int index) {
              var item = controller.list[index];
              return TodoItem(
                  key: Key(index.toString()),
                  id: item.id,
                  todo: item.todo,
                  isFinished: item.isFinished);
            })),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.addTodo,
      ));
}
