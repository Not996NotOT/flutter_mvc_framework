import 'package:flutter_mvc_framework/models/viewmodels/TodoViewModel.dart';
import 'package:flutter_mvc_framework/services/BaseService.dart';

class TodoService extends BaseService {
  addTodo() {}
  List<TodoViewModel> getTodoList() {
    List<TodoViewModel> list = [];
    List.generate(
        10,
        (index) =>
            list.add(new TodoViewModel(id: index, todo: "todo${index}")));
    return list;
  }
}
