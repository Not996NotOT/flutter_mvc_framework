import 'package:flutter/material.dart';
import 'package:flutter_mvc_framework/routers/Router.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
void main() {
  runApp(GetMaterialApp(
    routingCallback: routeInterceptor,
    initialRoute: initialRoute,
    getPages: routes,
  ));
}


