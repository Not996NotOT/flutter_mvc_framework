import 'package:flutter_mvc_framework/models/viewmodels/TodoViewModel.dart';
import 'package:get/get.dart';

class TodoController extends GetxController {
  var count = 0.obs;
  RxList<TodoViewModel> list = new RxList<TodoViewModel>();
  @override
  void onInit() {
    super.onInit();
    List.generate(
        5,
        (index) =>
            list.add(new TodoViewModel(id: index, todo: "todo${index}")));
  }

  void addTodo() =>
      list.add(new TodoViewModel(id: list.length, todo: "todo${list.length}"));
}
