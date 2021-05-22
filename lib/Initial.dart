import 'package:flutter_mvc_framework/infrastructure/ioc/IOCContainer.dart';
import 'package:flutter_mvc_framework/services/TodoService.dart';

class Initial {
  Initial(){
    IOCContainer.addIOC<TodoService>(TodoService());
  }
}