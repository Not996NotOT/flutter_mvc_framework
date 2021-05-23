import 'package:flutter_mvc_framework/controllers/BaseController.dart';
import 'package:flutter_mvc_framework/models/viewmodels/TodoViewModel.dart';
import 'package:get/get.dart';

class TodoFormController extends BaseController {
  late Rx<TodoViewModel> rxTodoViewModel;
  @override
  void onInit() {
    super.onInit();
    rxTodoViewModel = new Rx<TodoViewModel>(new TodoViewModel());
  }
}
