import 'package:flutter_mvc_framework/views/todoform/TodoFormController.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class TodoFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TodoFormController>(() => TodoFormController());
  }
}