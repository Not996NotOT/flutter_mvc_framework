import 'package:flutter_mvc_framework/infrastructure/ioc/IOCContainer.dart';
import 'package:flutter_mvc_framework/models/viewmodels/TodoViewModel.dart';
import 'package:flutter_mvc_framework/services/TodoService.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class TodoController extends GetxController {
  var count = 0.obs;
  var _subject = new ReplaySubject();
  var list = new RxList<TodoViewModel>();
  late TodoService _todoService;
  @override
  void onInit() {
    super.onInit();
     _todoService = IOCContainer.getInstance<TodoService>();
    _subject.throttleTime(Duration(seconds: 1)).listen((event) {
      list.add(new TodoViewModel(id: list.length, todo: "todo${list.length}"));
    });
    _todoService.getTodoList().forEach((item) {
      list.add(item);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subject.close();
  }

  void addTodo() => _subject.add(0);
}
