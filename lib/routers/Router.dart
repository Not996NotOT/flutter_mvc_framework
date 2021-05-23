import 'package:flutter_mvc_framework/routers/RouterEnum.dart';
import 'package:flutter_mvc_framework/views/todo/TodoBinding.dart';
import 'package:flutter_mvc_framework/views/todo/TodoView.dart';
import 'package:flutter_mvc_framework/views/todoform/TodoFormBinding.dart';
import 'package:flutter_mvc_framework/views/todoform/TodoFormView.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/observers/route_observer.dart';

var initialRoute = routePath[RouterEnum.Todo]!;

var routes = [
  GetPage(
      name: routePath[RouterEnum.Todo]!,
      page: () => TodoView(),
      binding: TodoBinding()),
  GetPage(
      name: routePath[RouterEnum.TodoForm]!,
      page: () => TodoFormView(),
      binding: TodoFormBinding()),
];

var routeInterceptor =
    (Routing? routing) => print(routing?.route?.settings.name);
