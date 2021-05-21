import 'package:flutter_mvc_framework/views/todo/TodoBinding.dart';
import 'package:flutter_mvc_framework/views/todo/TodoView.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/observers/route_observer.dart';

var initialRoute = '/todo';

var routes = [
  GetPage(name: '/todo', page: () => TodoView(), binding: TodoBinding()),
];

var routeInterceptor =
    (Routing? routing) => print(routing?.route?.settings.name);
