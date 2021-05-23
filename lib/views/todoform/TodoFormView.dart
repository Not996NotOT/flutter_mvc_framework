import 'package:flutter/material.dart';
import 'package:flutter_mvc_framework/views/BaseView.dart';
import 'package:flutter_mvc_framework/views/todoform/TodoFormController.dart';
import 'package:get/get.dart';

class TodoFormView extends BaseView<TodoFormController> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text("添加代办事项"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: Obx(() => Container(
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                      hintText: "编号",
                    ),
                    onChanged: (value) =>
                        controller.rxTodoViewModel.value.id = int.parse(value)),
                TextField(
                    decoration: InputDecoration(
                      hintText: "代办事项",
                    ),
                    onChanged: (value) =>
                        controller.rxTodoViewModel.value.todo = value),
                CheckboxListTile(
                    title: Text("是否完成"),
                    value: controller.rxTodoViewModel.value.isFinished,
                    onChanged: (value) {
                      controller.rxTodoViewModel.value.isFinished = value!;
                      controller.rxTodoViewModel.refresh();
                    })
              ],
            ),
          )));
}
